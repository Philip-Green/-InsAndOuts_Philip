//#include <NewPing.h>

  
/*
Ultrasonic Distance Sensor Demo
Modifed by AB from https://www.instructables.com/Simple-Arduino-and-HC-SR04-Example/
Use for HC-SR04 type ping distance sensor
(If using US-100 type, make sure no back jumper is connected)
For US-100 type Ultrasonic sensor and UART mode, see:
https://www.adafruit.com/product/4019 
https://github.com/stoduk/PingSerial
For more on pulseIn(): 
https://www.arduino.cc/reference/en/language/functions/advanced-io/pulsein/
***Wiring***
VCC to arduino 5v 
GND to arduino GND (note: may be 1 or 2 GND pins)
Echo to Arduino pin 13 
Trig to Arduino pin 12
*/

long duration, distance;
const int LED1=9; 
const int trigPin = 13;
const int echoPin = 12;
const int LED2=8;
const int LED3=11;//LED pin
const int LED4=10;
const int buttonPin=2;
int ultval=0;
int buttonState=0;

void setup() {
  Serial.begin (9600);
  pinMode(buttonPin,INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode (LED1, OUTPUT);
  pinMode (LED2,OUTPUT);
  pinMode (LED3,OUTPUT);
  pinMode (LED4,OUTPUT);// initialize LED pin as digital output
  pinMode(buttonPin,INPUT);
}

void loop() {
 buttonState= digitalRead(buttonPin);
  delay(10);
  
  ultval=analogRead(echoPin);
  ultval= map(ultval,0,255,0,360);
  delay(100);
  
  digitalWrite(trigPin, LOW);  
  delayMicroseconds(2); 
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10); 
  digitalWrite(trigPin, LOW);
  
  duration = pulseIn(echoPin, HIGH);
  distance = (duration/2) / 29.1;

  if(distance<4){
    digitalWrite(LED1,HIGH);
    digitalWrite(LED2,LOW);
    digitalWrite(LED3,HIGH);
    digitalWrite(LED4,LOW);
  }
   else{
    digitalWrite(LED1,LOW);
    digitalWrite(LED2,HIGH);
    digitalWrite(LED3,LOW);
    digitalWrite(LED4,HIGH);
    }  
  
  if (distance >= 500 || distance <= 0){
    //Serial.write("Out of range");
  }
  else {
    Serial.write(distance);
    Serial.write("feet");
    Serial.write(buttonState);
  }
  delay(500);
}
