float gone=0;
float move=2;
//float change=120;
int state=1;
PFont g;



void setup(){
background(218,156,16);
size(900,900);
g=loadFont("Serif.italic-48.vlw");
textFont(g);
}


void draw(){
  if(state==1){
    eyes(255,204,0);
    nose();
    smile();
  } else if(state==2){
    background(0,0,0); 
    eyes(255,0,0);
    //ellipseMode(CENTER);
    //left eye
    strokeWeight(4);
    ellipse(100,100,130,130);
    arc(80,60,50,50,HALF_PI,PI);
    arc(90,80,50,50,HALF_PI,PI);
    arc(100,80,70,80,PI,HALF_PI);
    //arc(74,75,55,64,PI, PI+QUARTER_PI);
    //arc(-80,-60,-50,-50,HALF_PI,PI);
    
    //Right eye
    ellipse(800,100,130,130);
    square(755,55,85);
    triangle(830,110,750,110,770,75);
    //triangle(830,75,750,55,770,75);
    fill(255,255,255);
    text("See what I want you to see.", 200,575);
    
  } else if(state==3){
      echo();
  }
  //blink();
  println(state);
}


void eyes(int r, int g, int b){
stroke(120,200,135);
fill(r,g,b);
stroke(0,0,0);
ellipse(100,100,180,180);
//fill(170,120,35);
ellipse(800,100,180,180);
//stroke(0,0,0);
//line(80,80,130,130);
//line(30,120,80,80);

}

void nose(){
stroke(0,0,0);
fill(255,69,0);
//stroke(169,169,169);
triangle(200,200,500,100,700,300);
}


/*void blink(){//Blinking of the eyes
if(keyPressed==true){
  change=change+move;
  change=0;
}else{
  change=3;
}

}*/

void smile(){
fill(255,255,255);
arc(500,500,600,400,gone,PI+QUARTER_PI,PIE);
if(mousePressed==true){
  fill(128,0,128);
  arc(500,500,600,400,gone,PI+QUARTER_PI,PIE);
  stroke(255,0,0);
  gone=gone+2;
  //redraw();
}else{
gone=0;
fill(255,255,255);
}


}



void keyPressed(){//Change color of the eyes
if(key=='k' || key=='K'){
  if(state==1){
     state=2;  
  } else if(state==2){
     state=3;
  } else if(state==3){
    state=1;
  }
  
  
} 
}


void echo(){
  background(123,56,79);
  triangle(120,120,400,200,200,120);
 

}