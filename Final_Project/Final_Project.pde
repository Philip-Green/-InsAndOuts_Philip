PImage img;


void setup(){
size(600,600);
img= loadImage("Color Wheel.png");
}


void draw(){
background(204);
//image(img,0,0);
//translate(mouseX,mouseY);
rotate(mouseX/100.0);
rotate(mouseY/100.0);
imageMode(CENTER);
image(img,-200,-200,400,400);
}
