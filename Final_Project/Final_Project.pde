/*
Rotation example.
 
 Rotating a square from its center point, with MouseX input.
 
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
  imageMode(CENTER); //Center the rect
  img=loadImage("Color Wheel.png");
}

void draw() {
  background(0);
  pushMatrix(); //saves current coordinate system
  angle = map (SENSOR, 0, width, 0, 360); //remap mouseX value to 0-360 
  translate(width/2, height/2); //shifts coordinates
  rotate(radians(angle)); //changes angle degrees to radians and rotates
  image(img,width/8,height/8);
  //rect(0, 0, 75, 75); //displays rect - notice diff coordinates  
  popMatrix(); //restores prior coordinate system
}
