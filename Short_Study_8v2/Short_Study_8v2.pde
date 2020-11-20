


import processing.serial.*; 
import processing.sound.*;

SoundFile myname;

Serial myPort;  // create object from Serial class

void setup() {
  size(500, 500); 
  background(255);
  fill(0);
  textSize (22);
  textAlign (CENTER, CENTER);
  myname=new SoundFile(this, "Scream.wav");
  myname.play();
  

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[0]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //text stuff
  text ("Wake Me Up", width/4, height/3);
  text ("No! Seriously!", width-width/4, height/3);
  text ("Alright...turn me off", width/2, height-height/3);

//mouse location controls communication to Serial 
  if (mouseY > width/2 && mouseY < height) {
    background(255);
    myPort.write(0); //send a 0
    println ("0");
  } else if (mouseX < width/2 && mouseX > 0) {//if mouse is on left side of screen
    background(255,0,0);
    myPort.write(1);  //write '1' to Serial port
    println("1"); //also print '1' to console
  } else if (mouseX > width/2 && mouseX < width) {
    background(120,90,120);
    myPort.write(2);  //write '2' to Serial port
    println ("2"); //print to '2' to console
  } else {  //otherwise
    //background(255);
    myPort.write(0); //send a 0
    println ("0");
  }
}
