#include <SoftwareSerial.h>
#include <Servo.h>

Servo myservo;
Servo myservo2;
int blueTx = 10;
int blueRx = 11;
SoftwareSerial mySerial(blueTx, blueRx);
String myString2 = "";
boolean boo = false;

void setup() {
  Serial.begin(9600);
  myservo.attach(6);
  myservo2.attach(5);
  myservo.write(0);
  myservo2.write(0);
  mySerial.begin(9600);
}
void loop() {
  while (mySerial.available()) {
    char value = mySerial.read();
    myString2 += value;
    boo = true;
    delay(100);
  }
  
  if (boo) {
    int index_x = myString2.indexOf(',');
    int index_y = myString2.length();
    float x = myString2.substring(0, index_x).toInt();
    float y = myString2.substring(index_x + 1, index_y).toInt();
    Serial.println(x);
    Serial.println(y);
    delay(20);

    myservo.write(x);
    delay(2000);
    myservo.write(0);
    delay(1000);
    myservo2.write(y);
    delay(2000);
    myservo2.write(0);
    myString2 = "";
    boo = false;
  }
}
