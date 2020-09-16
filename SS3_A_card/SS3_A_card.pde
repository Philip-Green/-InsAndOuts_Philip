//Philip Green
//A Card
 int y=100;
 int x=55;
 int yy=0;
 float dec=89.09;
void setup(){
  size(600,600);
  rectMode(CENTER);
  //ellipseMode(CENTER);
  background(150);
}

 //triangle(55,55,145,145,100,100);

void draw(){
 
  while(y<width){
  rect(y,y,90,90);
  y+=100;
  }
 while(x<height){
  //line(55,55,145,145); 
  triangle(x,x,145,145,90,90);
  //ellipse(45,45,90,90);
  x+=98;
  }
    ellipseMode(LEFT);
    while(yy<width/2){
    ellipse(500,yy,90,90);
    yy+=100;
    }
    
   
   
   
   
   if(keyPressed==true){
     background(120,220,99);
     ellipse(100,yy,90,90);
     yy=0;
   }else{
     yy=0;
   }
 
}
