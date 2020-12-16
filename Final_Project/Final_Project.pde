 Rotating an image from its center point, with sensor input.
 
 */
import processing.serial.*;
float angle;
Serial myPort;
PImage img;
int val=0;
int SENSOR;

void setup() {
  size(600, 600);
  printArray(Serial.list());
  String portName=Serial.list()[0];
  myPort=new Serial(this,portName,9600);
  //noStroke();
  //fill(255);
  imageMode(CENTER); //Center the image
  img=loadImage("Color Wheel.png");
}

void draw() {
  //serial port read was missing- so data was not coming in
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  background(0);
  pushMatrix(); //saves current coordinate system
  //first parameter is data read from serial port
  angle = map (val, 0, 255, 0, 360); //remap sensor data to 0-360
  translate(width/2, height/2); //shifts coordinates
  rotate(radians(angle)); //changes angle degrees to radians and rotates
  image(img,0,0); //coordinates at 0,0 point post-translation
  //rect(0, 0, 75, 75); //displays rect - notice diff coordinates  
  popMatrix(); //restores prior coordinate system
  
  println ("val: " + val);
  println ("angle: " + angle);
}
