


// Use comments to make your code more readable. 
// Comments get ignored when the program runs.

// Pay attention to punctuation, spelling, and capitalization. 
// But spacing     does not matter.



const int LED1= 13;  // creates variable called LED and assigns value of 13
const int LED2=12;
const int LED3=11;
const int LED4=10;
//
const int buttonPin=3;
 int buttonState=0;

// the setup function runs once at start up
void setup() {
  pinMode(LED1, OUTPUT);// initialize pin as an output.
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  //pinMode(LED1, OUTPUT);
  pinMode(buttonPin,INPUT);
}


// the loop function runs infinitely
void loop() {
buttonState=digitalRead(buttonPin);
delay(10);

if(buttonState ==HIGH){
  digitalWrite(LED1,HIGH);
  delay(700);
  digitalWrite(LED2,HIGH);
  delay(700);
  digitalWrite(LED3,HIGH);
  delay(700);
  digitalWrite(LED4,HIGH);
  delay(700);
}else{
  digitalWrite(LED1,LOW);
  digitalWrite(LED2,LOW);
  digitalWrite(LED3,LOW);
  digitalWrite(LED4,LOW);
} //
  
  
  /*digitalWrite(LED1, HIGH);   // sends voltage to pin
  delay(1000);               // delays 1000 milliseconds (1 second)
  digitalWrite(LED1, LOW);    // stops sending voltage to pin
  delay(1000);   // delays 1 second
  digitalWrite(LED2,HIGH);
  delay(500);
  digitalWrite(LED2,LOW);
  delay(500);
  digitalWrite(LED3,HIGH);
  delay(2000);
  digitalWrite(LED3,LOW);
  delay(2000);
  digitalWrite(LED4,HIGH);
  delay(700);
  digitalWrite(LED4, LOW);
  delay(700);*/
}
