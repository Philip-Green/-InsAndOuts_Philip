//Philip Green
// Title: See if it works. 

//Global Variables
float dec=99.78;
int number=140;
//int increase = 1;
int increment=5;
int test=0;
int change=int(random(1,130));
void setup(){ //calls up once
size(800,800);
//background(255,255,255);//rbg 0-255, alpha for the 4th par
}

void draw(){ //continuous call to infinity 
background(120,190,205);
//Setting up Ellipse
ellipse(mouseX,mouseY,dec * 2,number);
fill(255,0,0);


//Setting up the triangle. 
triangle(test,change,100,100,0,0);
fill(100,200,120);
test=test+increment;
  if (test >= 800){
  increment=increment * -1;
  } else if(test<=0) {
  increment = increment *-1;
  }
    
  if (mousePressed == true){ //Press the mouse to change shape of ellipse. 
      dec=75.67;
      
    }else{
      dec=99.78;
    }


}




        
