#include <Adafruit_INA219.h>
#include <SPI.h>
#include "mcp_can.h"

//CAN ID defines
#define ID_RMC_TEMPS1 0xA0
#define ID_RMC_TEMPS2 0xA1
#define ID_RMC_TEMPS3 0xA2
#define ID_DASH_COOLING_EN 0x6F
#define ID_TEST_INTERFACE_BOARD 0x70

//NTC Constants
#define THERMISTOR_B_VAL 3380
#define NTC_R_ROOM 10000
#define NTC_T_ROOM 25
#define NTC_BETA 3380
#define R_DIVIDER 10000
#define DMAX 1023

//How often to send CAN heartbeat/status
#define HEARTBEAT_INTERVAL 200

//Pin defines
#define SPI_CAN_CS   6
#define LED1         14      //blue led
#define LED2         2       //green led
#define FAN0         9       //Internal fan header
#define FAN1         10      //Radiator fans
#define FAN2         3       //Cooling pump
#define FAN3         5       //Nothing yet
#define NTC1         A1
#define NTC2         A2
#define DC_DC_EN     4
#define DC_DC_FAULT  7
#define DC_DC_TR_EN  8

MCP_CAN CAN(SPI_CAN_CS);     // Set CS pin

Adafruit_INA219 ina219;

bool coolingEnabled;
int16_t RMCTemps[11];       //Motor controller temps, equivilent to the following:

uint32_t lastheartbeatTime;
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
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(FAN2, OUTPUT);
  pinMode(FAN0, OUTPUT);
  pinMode(FAN1, OUTPUT);
  pinMode(FAN2, OUTPUT);
  pinMode(FAN3, OUTPUT);
  pinMode(DC_DC_EN, OUTPUT);
  pinMode(DC_DC_TR_EN, OUTPUT);

  Serial.begin(115200);

  lastheartbeatTime = millis(); //Used for sending out status/temps/voltage/current/heartbeat over CAN on a regular interval

  ina219.begin();

  while (CAN_OK != CAN.begin(CAN_500KBPS)) { //Check we can talk to CAN
    Serial.println("CAN BUS Shield init fail");
    Serial.println("Init CAN BUS Shield again");
    delay(100);
  }
  Serial.println("CAN BUS Shield init ok!");
}

void testRoutine(){
//Test routine
  delay(1000);

  //Internal fans
  Serial.println("Testing internal fans.");
  analogWrite(FAN0, 255);
  delay(1000);
  analogWrite(FAN0, 0);

  //Radiator fans
  Serial.println("Testing radiator fans.");
  analogWrite(FAN1, 255);
  delay(1000);
  analogWrite(FAN1, 0);

  //Cooling pump
  Serial.println("Testing cooling pump.");
  delay(1000);
  analogWrite(FAN2, 0);

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
  Serial.println("LED2");
  digitalWrite(LED2, HIGH);
  
}

float calculateTemperatureC(float adcReading) {
  float NTCResistance = R_DIVIDER * ((DMAX / adcReading) - 1);
  float tKelvin = 1 / (NTC_T_ROOM + NTC_BETA * log(NTC_R_ROOM / NTCResistance));
  return tKelvin + 273.15;
}

void updateFansFromTemps() {
  //Print temps
  for (int i = 0; i < 11; i++) {
    Serial.println(RMCTemps[i]);
  }

  //Find max temp
  int16_t maxTemp = 0;
  for (int i = 0; i < 12; i++) {
    if (maxTemp < RMCTemps[i]) {
      maxTemp = RMCTemps[i];
    }
  }

  //Radiator fan control
  analogWrite(FAN1, map(maxTemp, 20, 30, 0, 255)); //TODO: Check mapping

  //Pump control with deadband
  if (maxTemp > 23) { //TODO: Check mapping
    digitalWrite(FAN2, 0);
  }
  else if (maxTemp < 20) {
    digitalWrite(FAN2, 1);
  }

  //Local fan control
  float NTC1Temp = calculateTemperatureC(analogRead(NTC1));
  analogWrite(FAN0, map(NTC1Temp, 0, 1023, 30, 255)); //TODO: Change mapping, may need to max/min this to avoid weird overflow-type issues on analogWrite
}

void reportVoltageCurrentTemps() {
  uint16_t voltage_mV = ina219.getBusVoltage_V();
  uint16_t current_mA = ina219.getCurrent_mA();

  //Example CAN message data: 0x3D   0x35   0x5B   0x57   0x00      0x00      0x00      0x00
  //                          V_LSB  V_MSB  A_LSB  A_MSB  NTC1_LSB  NTC1_MSB  NTC2_LSB  NTC2_MSB
  //Here, 13.629V and 22.363A
  unsigned char bufToSend[8] = {0, 0, 0, 0, 0, 0, 0, 0};
  bufToSend[0] = voltage_mV;
  bufToSend[1] = voltage_mV << 256;
  bufToSend[2] = current_mA;
  bufToSend[3] = current_mA << 256;

  //Report internal temps on CAN
  //TODO: Map values to temp properly
  float NTC1Temp = calculateTemperatureC(analogRead(NTC1));
  float NTC2Temp = calculateTemperatureC(analogRead(NTC2));
//  bufToSend[4] =
//    bufToSend[5]
//    bufToSend[6]
//    bufToSend[7]

    CAN.sendMsgBuf(0x68, 0, 8, bufToSend);
}

void filterCan(unsigned long canId, unsigned char buf[8]) { //Decides what to do with CAN data
  switch (canId) {
    case ID_RMC_TEMPS1:
      for (int i = 0; i < 4; i++) {
        RMCTemps[i] = (buf[2 * i + 1] << 8) + buf[2 * i]; //Place temps into RMCTemps
      }
      //Serial.println("Recieved temps1");
      break;
    case ID_RMC_TEMPS2:
      for (int i = 0; i < 4; i++) {
        RMCTemps[i + 4] = (buf[2 * i + 1] << 8) + buf[2 * i];  //Place temps into RMCTemps
      }
      break;
    case ID_RMC_TEMPS3:
      for (int i = 0; i < 3; i++) {
        RMCTemps[i + 8] = (buf[2 * i + 1] << 8) + buf[2 * i];  //Place temps into RMCTemps
      }
      break;
    //TODO: Implement dash cooling enable/disable
    case ID_DASH_COOLING_EN:
      Serial.println("Received cooling_en status");
      break;
    case ID_TEST_INTERFACE_BOARD:
      testRoutine();
    default:
      Serial.println("Received an unknown CAN ID.");
      break;
  }
}

void loop() {
  unsigned char len = 0;
  unsigned char buf[8];

  if (CAN_MSGAVAIL == CAN.checkReceive()) {   // check if data coming
    CAN.readMsgBuf(&len, buf);    // read data,  len: data length, buf: data buf

    filterCan(CAN.getCanId(), buf);
    updateFansFromTemps(); //Updates all cooling fan speeds + pump enable according to temps
  }

  //TODO:
  //Check for DC/DC fault
  //If fault, then:
  //turn DC/DC off and back on
  //Report on CAN

  if (millis() > lastheartbeatTime + HEARTBEAT_INTERVAL) {
    lastheartbeatTime = millis();
    reportVoltageCurrentTemps();
    //TODO: checkAndReportDCDCStatus();
  }
}
