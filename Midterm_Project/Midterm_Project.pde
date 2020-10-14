float gone=0;
float move=2;
float change=120;
int state=1;



void setup(){
//background(700,700);
size(900,900);
}


void draw(){
  if(state==1){
    eyes(170,120,35);
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
    
    
    //ellipse(30,120,80,80);
  } else if(state==3){
      //meteor();
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

void blink(){//Blinking of the eyes
if(keyPressed==true){
  change=change+move;
  change=0;
}else{
  change=3;
}

}

void smile(){
fill(255,255,255);
arc(500,500,600,400,gone,PI+QUARTER_PI,PIE);
if(mousePressed==true){
  fill(0,0,0);
  arc(500,500,600,400,gone,PI+QUARTER_PI,PIE);
  stroke(255,0,0);
  gone=gone+2;
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


//void meteor(){

//}
