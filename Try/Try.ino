const int LED1= 13; // creates variable called LED and assigns value of 13
const int LED2=12;
const int LED3=11;
const int LED4=10;
// the setup function runs once at start up
void setup() {
  pinMode(LED1, OUTPUT);    // initialize pin as an output.
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
}


// the loop function runs infinitely
void loop() {
  digitalWrite(LED1, HIGH);   // sends voltage to pin
  delay(1000);               // delays 1000 milliseconds (1 second)
  digitalWrite(LED1, LOW);    // stops sending voltage to pin
  delay(1000);                // delays 1 second
  digitalWrite(LED2, HIGH);
  delay(1000);
  digitalWrite(LED2,LOW);
  delay(1000);
  digitalWrite(LED3,HIGH);
  delay(1000);
  digitalWrite(LED3,LOW);
  delay(1000);
  digitalWrite(LED4,HIGH);
  delay(1000);
  digitalWrite(LED4,LOW);
  delay(1000); 

}
