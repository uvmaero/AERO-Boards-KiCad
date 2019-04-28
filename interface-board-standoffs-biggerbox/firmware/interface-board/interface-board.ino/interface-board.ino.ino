/*Willem Hillier, UVM AERO, 2019. For CS4 cooling/interface box.
  TODO:
    -Brakelight control off of pressure sensor data on CAN.
    -Temp curve control over CAN/storing in EEPROM
*/

#include <Adafruit_INA219.h>
#include <SPI.h>
#include "mcp_can.h"
#include <avr/wdt.h>
#include <avr/interrupt.h>
#define DEBUG

//CAN ID defines
#define ID_BASE               0x62
#define ID_RESET              ID_BASE
#define ID_PROG_SELECT        ID_BASE + 1
#define ID_PROG_WRITE         ID_BASE + 2
#define ID_PROG_DONE          ID_BASE + 3
#define ID_PROG_ERROR         ID_BASE + 4
#define ID_STATUS             ID_BASE + 5
#define ID_TEST               ID_BASE + 6
#define ID_DC_DC_FAULT        ID_BASE + 7

//External CAN defines
#define ID_RMC_TEMPS1          0xA0
#define ID_RMC_TEMPS2          0xA1
#define ID_RMC_TEMPS3          0xA2
#define ID_DASH_COOLING_EN     0x6F
#define ID_PEDAL_BOARD_DATA    0x32 //Byte 3 and 2 are brake pressure, same format as reinhart temps
#define ID_PEDAL_BOARD_PRECHARGE_STATUS 0x36

//NTC Constants
#define SERIESRESISTOR         10000
#define NOMINAL_RESISTANCE     10000
#define NOMINAL_TEMPERATURE    25
#define BCOEFFICIENT           3380

//Timing constants
#define HEARTBEAT_INTERVAL     500
#define DC_DC_REBOOT_DELAY     2000
#define DASH_STATUS_TIMEOUT    2000

//DC-DC Levels
#define DC_DC_FAULT_LVL        0
#define DC_DC_EN_LVL           0

//Cooling constants
#define RADIATOR_FAN_MAX_TEMP  35
#define RADIATOR_FAN_MIN_TEMP  23
#define MIN_RADIATOR_FAN_VAL   64 //Out of 255
#define INTERNAL_FAN_MIN_TEMP  25
#define INTERNAL_FAN_MAX_TEMP  50
#define MIN_INTERNAL_FAN_VAL   64 //Out of 255
#define PUMP_ON_TEMP           5
#define PUMP_OFF_TEMP          0  //Change back to 21 C

//Pin defines
#define SPI_CAN_CS             6
#define LED1                   14      //blue led
#define LED2                   2       //green led
#define INTERNAL_FAN_0         9       //Internal fan header
#define RADIATOR_FAN_1         10      //Radiator fans
#define PUMP                   3       //Cooling pump
#define BRAKE_LIGHT_3          5       //Nothing yet
#define NTC1                   A1
#define NTC2                   A2
#define DC_DC_EN               4
#define DC_DC_FAULT            7
#define DC_DC_TR_EN            8

//Misc. defines
#define BRAKELIGHT_THRESHOLD   500

MCP_CAN CAN(SPI_CAN_CS);     // Set CS pin

Adafruit_INA219 ina219;

uint32_t lastheartbeatTime;
uint32_t lastDCDCFaultTime;
uint32_t dashCoolingStatusRecievedTime;

bool coolingEnabled = 1;
bool dashCoolingStatusRecieved = 0;
bool prechargeComplete = 0;
bool fansRamped = 0;
int16_t RMCTemps[11];       //Motor controller temps, equivilent to the following:
/*
  int RMCTempA     = 0;  //IGBT phase A
  int RMCTempB     = 0;  //IGBT phase B
  int RMCTempC     = 0;  //IGBT phase C
  int RMCTempGDB   = 0;  //gate driver board
  int RMCTempCB    = 0;  //control board
  int RMCTempRTD1  = 0;  //RTD input 1
  int RMCTempRTD2  = 0;  //RTD input 2
  int RMCTempRTD3  = 0;  //RTD input 3
  int RMCTempRTD4  = 0;  //RTD input 4
  int RMCTempRTD5  = 0;  //RTD input 5
  int RMCTempMotor = 0;  //filtered temp value from motor temp sensor
*/

void setup() {

  //Disable Vicor
  pinMode(DC_DC_EN, OUTPUT);
  digitalWrite(DC_DC_EN, !DC_DC_EN_LVL);
  pinMode(DC_DC_TR_EN, OUTPUT);

#ifdef DEBUG
  Serial.println();
  Serial.println("setup()");
#endif

  //Internal fan PWM frequency
  TCCR1B = TCCR1B & B11111000 | B00000001; // set timer 1 divisor to 1 for PWM frequency of 31372.55 Hz

  pinMode(SPI_CAN_CS, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);

  //Set pinmodes and immediately turn off
  pinMode(INTERNAL_FAN_0, OUTPUT);
  analogWrite(INTERNAL_FAN_0, 0);

  pinMode(RADIATOR_FAN_1, OUTPUT);
  analogWrite(RADIATOR_FAN_1, 0);

  pinMode(PUMP, OUTPUT);
  digitalWrite(PUMP, 0);

  pinMode(BRAKE_LIGHT_3, OUTPUT);
  digitalWrite(BRAKE_LIGHT_3, 0);

  Serial.begin(115200);

  lastheartbeatTime = millis(); //Used for sending out status/temps/voltage/current/heartbeat over CAN on a regular interval

  //Current monitoring startup
  ina219.begin();
  ina219.setCalibration_32V_1A();
  delay(100);

  while (CAN_OK != CAN.begin(CAN_500KBPS)) { //Check we can talk to CAN
#ifdef DEBUG
    Serial.println("CAN BUS Shield init fail");
    Serial.println("Init CAN BUS Shield again");
#endif
    delay(100);
  }
#ifdef DEBUG
  Serial.println("CAN BUS Shield init ok!");
#endif

  digitalWrite(LED2, HIGH);
  //Fade brake light up and down to indicate sucessful initialization
  for (int i = 0; i < 255; i = i + 5) {
    analogWrite(BRAKE_LIGHT_3, i);
    delay(10);
  }
  for (int i = 255; i > 0; i = i - 5) {
    analogWrite(BRAKE_LIGHT_3, i);
    delay(10);
  }
  digitalWrite(BRAKE_LIGHT_3, 0);
}

void testRoutine() {
  Serial.println();
  Serial.println("testRoutine()");

  //Shut down everything
  analogWrite(INTERNAL_FAN_0, 0);
  analogWrite(RADIATOR_FAN_1, 0);
  digitalWrite(PUMP, 0);
  digitalWrite(BRAKE_LIGHT_3, 0);

  //Test routine
  delay(1000);

  //Internal fans
  Serial.println("Testing internal fans.");
  analogWrite(INTERNAL_FAN_0, 255);
  delay(3000);
  analogWrite(INTERNAL_FAN_0, 0);

  //Radiator fans
  Serial.println("Testing radiator fans.");
  for (int i = 0; i < 255; i = i + 5) {
    analogWrite(RADIATOR_FAN_1, i);
    delay(20);
  }
  delay(3000);
  analogWrite(RADIATOR_FAN_1, 0);

  //Cooling pump
  Serial.println("Testing cooling pump.");
  digitalWrite(PUMP, HIGH);
  delay(3000);
  digitalWrite(PUMP, LOW);

  //Brake light
  Serial.println("Testing brake light.");
  digitalWrite(BRAKE_LIGHT_3, HIGH);
  delay(3000);
  digitalWrite(BRAKE_LIGHT_3, LOW);

  //NTCs
  Serial.println("Testing NTCs.");
  Serial.print("NTC 1 Temp (deg C): ");
  Serial.println(calculateTemperatureC(analogRead(NTC1)));
  Serial.print("NTC 2 Temp (deg C): ");
  Serial.println(calculateTemperatureC(analogRead(NTC2)));

  //LEDs
  Serial.println("Testing LEDs.");

  Serial.println("LED1");
  digitalWrite(LED1, HIGH);
  delay(1000);
  digitalWrite(LED1, LOW);

  Serial.println("LED2");
  digitalWrite(LED2, HIGH);
  delay(1000);
  digitalWrite(LED2, LOW);

}

float calculateTemperatureC(float adcReading) {
#ifdef DEBUG
  Serial.println();
  Serial.println("calculateTemperatureC");
#endif

  //Old code
  //float NTCResistance = R_DIVIDER * ((DMAX / adcReading) - 1);
  //float tKelvin = 1 / (NTC_T_ROOM + NTC_BETA * log(NTC_R_ROOM / NTCResistance));

  float Resistance;
  //convert value to resistance
  Resistance = (1023 / (1023 - adcReading)) - 1;
  Resistance = SERIESRESISTOR / Resistance;

  float steinhart;
  steinhart = Resistance / NOMINAL_RESISTANCE;       // (R/Ro)
  steinhart = log(steinhart);                        // ln(R/Ro)
  steinhart /= BCOEFFICIENT;                         // 1/B * ln(R/Ro)
  steinhart += 1.0 / (NOMINAL_TEMPERATURE + 273.15); // + (1/To)
  steinhart = 1.0 / steinhart;                       // Invert
  steinhart -= 273.15;                               // convert to C

#ifdef DEBUG
  Serial.println("Calculating temperature");
  Serial.print("adcReading: ");
  Serial.print(adcReading, DEC);
  Serial.print(", temperature deg C: ");
  Serial.println(steinhart);
#endif

  return (steinhart);
}

void updateFansFromTemps() {
#ifdef DEBUG
  Serial.println();
  Serial.println("updateFansFromTemps()");
#endif

  //Print temps
#ifdef DEBUG
  for (int i = 0; i < 11; i++) {
    Serial.println(RMCTemps[i]);
  }
#endif

  //Find max temp
  float maxTemp = 0;
  //Change back to i<5
  for (int i = 0; i < 3; i++) {
    if (maxTemp < RMCTemps[i]) {
      maxTemp = RMCTemps[i];
    }
  }

  maxTemp = maxTemp / 10; //Reinhart temps are 10x actual

#ifdef DEBUG
  Serial.print("maxTemp: ");
  Serial.println(maxTemp);
#endif

  if (coolingEnabled == 1 && prechargeComplete == 1) {
    //First time starting fans?
    if (fansRamped == 0) {
      Serial.println("Ramping radiator fans.");
      for (int i = 0; i < 255; i = i + 5) {
        analogWrite(RADIATOR_FAN_1, i);
        delay(20);
      }
      fansRamped = 1;
    } else {
      //Radiator fan control
      analogWrite(RADIATOR_FAN_1, map(maxTemp, RADIATOR_FAN_MIN_TEMP, RADIATOR_FAN_MAX_TEMP, 0, 255)); //TODO: Check mapping

      //Pump control with deadband
      if (maxTemp > PUMP_ON_TEMP) { //TODO: Check mapping
#ifdef DEBUG
        Serial.print("Pump on.");
#endif
        digitalWrite(PUMP, 1);
      }
      else if (maxTemp < PUMP_OFF_TEMP) {
#ifdef DEBUG
        Serial.print("Pump off.");
#endif
        digitalWrite(PUMP, 0);
      }

      //Local fan control from NTC2
      //Average samples
      int NTC2val = analogRead(NTC2);
      for (int i = 0; i < 9; i++) {
        NTC2val = analogRead(NTC2) + NTC2val;
      }
      float NTC2Temp = calculateTemperatureC(NTC2val / 9);

      Serial.println(NTC2Temp);
      int fanval = map(NTC2Temp, INTERNAL_FAN_MIN_TEMP, INTERNAL_FAN_MAX_TEMP, 0, 255);
      Serial.println(fanval);
      fanval = min(fanval, 255);
      fanval = max(fanval, MIN_INTERNAL_FAN_VAL);
      Serial.println(fanval);
      analogWrite(INTERNAL_FAN_0, fanval);
      //If cooling disabled
    }
  } else {
    analogWrite(RADIATOR_FAN_1, 0);
    digitalWrite(PUMP, LOW);
  }
}

void reportVoltageCurrentTemps() {
#ifdef DEBUG
  Serial.println();
  Serial.println("reportVoltageCurrentTemps()");
#endif

  uint16_t voltage_mV = ina219.getBusVoltage_V();
  uint16_t current_mA = ina219.getCurrent_mA();

#ifdef DEBUG
  Serial.print("voltage_mV: ");
  Serial.print(voltage_mV);
  Serial.print(", current_mA: ");
  Serial.println(current_mA);
#endif

  //Example CAN message data: 0x3D   0x35   0x5B   0x57   0x00      0x00      0x00      0x00
  //                          V_LSB  V_MSB  A_LSB  A_MSB  NTC1_LSB  NTC1_MSB  NTC2_LSB  NTC2_MSB
  //Here, 13.629V and 22.363A
  unsigned char bufToSend[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  bufToSend[0] = voltage_mV & 0xFF;
  bufToSend[1] = voltage_mV >> 8;
  bufToSend[2] = current_mA & 0xFF;
  bufToSend[3] = current_mA >> 8;

  //Report internal temps on CAN
  //TODO: Map values to temp properly
  uint16_t NTC1Temp = 100 * calculateTemperatureC(analogRead(NTC1));
  uint16_t NTC2Temp = 100 * calculateTemperatureC(analogRead(NTC2));
  bufToSend[4] = NTC1Temp;
  bufToSend[5] = NTC1Temp >> 8;
  bufToSend[6] = NTC2Temp;
  bufToSend[7] = NTC2Temp >> 8;

#ifdef DEBUG
  Serial.print("bufToSend: ");
  for (int i = 0; i < 8; i++) {
    Serial.print(bufToSend[i], HEX);
    Serial.print(" ");
  }
  Serial.println();
#endif

  CAN.sendMsgBuf(ID_STATUS, 0, 8, bufToSend);
}

void filterCan(unsigned long canId, unsigned char buf[8]) { //Decides what to do with CAN data
#ifdef DEBUG
  // Serial.println();
  // Serial.print("filterCan(): ");
#endif

  switch (canId) {
    case ID_RMC_TEMPS1:
#ifdef DEBUG
      Serial.print("ID_RMC_TEMPS1");
#endif
      for (int i = 0; i < 4; i++) {
        RMCTemps[i] = ((buf[2 * i + 1] << 8) | buf[2 * i]); //Place temps into RMCTemps
      }
      break;

    case ID_RMC_TEMPS2:
#ifdef DEBUG
      Serial.print("ID_RMC_TEMPS2");
#endif

      for (int i = 0; i < 4; i++) {
        RMCTemps[i + 4] = ((buf[2 * i + 1] << 8) | buf[2 * i]);  //Place temps into RMCTemps
      }
      break;

    case ID_RMC_TEMPS3:
#ifdef DEBUG
      Serial.print("ID_RMC_TEMPS3");
#endif

      for (int i = 0; i < 3; i++) {
        RMCTemps[i + 8] = ((buf[2 * i + 1] << 8) | buf[2 * i]);  //Place temps into RMCTemps
      }
      break;
    case ID_DASH_COOLING_EN:
      dashCoolingStatusRecievedTime = millis();
      dashCoolingStatusRecieved = 1;
      if (buf[0] == 1) {
#ifdef DEBUG
        Serial.print("coolingEn");
#endif
        coolingEnabled = 1;
        //Soft-start radiator fans
        //for (int i = 0; i < MIN_RADIATOR_FAN_VAL; i = i + 5) {
        //  analogWrite(INTERNAL_FAN_0, i);
        //  delay(100);
        //}
      } else if (buf[0] = 0) {
        Serial.print("coolingDis");
        coolingEnabled = 0;
      }

#ifdef DEBUG
      Serial.println("ID_DASH_COOLING_EN");
#endif
      break;
    case ID_TEST:
      testRoutine();
      break;
    case ID_RESET:
      cli();
      wdt_enable(WDTO_15MS);
      while (1);
    case ID_PEDAL_BOARD_PRECHARGE_STATUS:
      //If precharge is complete, enable Vicor
      if (buf[0] == 2) {
        prechargeComplete = 1;
        digitalWrite(DC_DC_EN, DC_DC_EN_LVL);
      } else {
        prechargeComplete = 0;
        digitalWrite(DC_DC_EN, !DC_DC_EN_LVL);
      }
      break;
    case ID_PEDAL_BOARD_DATA:{
     uint16_t brakePressure = (buf[3] << 8) | buf[2];
      if (brakePressure > BRAKELIGHT_THRESHOLD) {
        digitalWrite(BRAKE_LIGHT_3, HIGH);
      } else {
        digitalWrite(BRAKE_LIGHT_3, LOW);
      }
      break;
    }
    default:
#ifdef DEBUG
      //Serial.println("ID_UNKNOWN");
#endif
      break;
  }
}

void loop() {
  unsigned char len = 0;
  unsigned char buf[8];

  if (CAN_MSGAVAIL == CAN.checkReceive()) {   // check if data coming
    CAN.readMsgBuf(&len, buf);    // read data,  len: data length, buf: data buf

    filterCan(CAN.getCanId(), buf);
  }
  //If we haven't recieved a cooling enabled status message from dash in more than DASH_STATUS_TIMEOUT, then run pumps/fans at 50%
  /*if (millis() > dashCoolingStatusRecievedTime + DASH_STATUS_TIMEOUT) {
    analogWrite()
    }
  */
  //If it's time to check DC/DC status (done every DC_DC_REBOOT_DELAY milliseconds)
  //Make sure precharging is complete before trying to reboot DC/DC
  if ((millis() > lastDCDCFaultTime + DC_DC_REBOOT_DELAY) && (prechargeComplete == 1)) {
    //Check for fault
    if (digitalRead(DC_DC_FAULT) == DC_DC_FAULT_LVL) {
      Serial.println("fault");
      //reportDCDCFault();
      //turn off DC/DC
      digitalWrite(DC_DC_EN, !DC_DC_EN_LVL);
    }
    digitalWrite(DC_DC_EN, DC_DC_EN_LVL);
    lastDCDCFaultTime = millis();
  }

  if (millis() > lastheartbeatTime + HEARTBEAT_INTERVAL) {
#ifdef DEBUG
    Serial.println("updating lastheartbeatTime");
#endif
    lastheartbeatTime = millis();
    updateFansFromTemps(); //Updates all cooling fan speeds + pump enable according to temps
    reportVoltageCurrentTemps();
    //TODO: checkAndReportDCDCStatus();
  }
}
