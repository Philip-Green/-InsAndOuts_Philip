byte val; // stores data received from serial port
const int LED = 10;


void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT); // set pin as output
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial.available()){
    val=Serial.read();
    }
    analogWrite(LED,val);
    delay(10);
}
