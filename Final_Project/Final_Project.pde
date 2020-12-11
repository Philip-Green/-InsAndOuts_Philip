
import processing.serial.*;
int val=0;
Serial myPort;
PImage img;
//int serialIn;


void setup(){
size(600,600);
printArray(Serial.list());
String portName=Serial.list()[0];
myPort= new Serial(this,portName,9600);
img= loadImage("Color Wheel.png");
imageMode(CENTER);
//img.resize(500,500);
}


void draw(){
  if( myPort.available()>0){
     val=myPort.read(); 
  }
  
  background(204);
  image(img,width/2,height/2,val,val);
  println(val);
  val=int(map(val,0,50,100,500));
}


void rotate(){

}
