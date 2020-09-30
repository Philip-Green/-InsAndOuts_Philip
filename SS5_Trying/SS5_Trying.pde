//Philip Green
//SS5_Trying
int[] numbers= new int[4];
int h=90;
int r=100;
int u=70;
float diameter=120;
float speed=2;
float gone=0;

int track_nums=0;

void setup(){
size(900,900);
/*fill(255,100,0);
numbers[0]=89;
numbers[1]=120;
numbers[2]=300;
numbers[3]=33;

textSize(40);
textAlign(LEFT,LEFT);*/
}

void draw(){
eye();
move();
nose();
smile();
fish();
//println("Numbers:"+ track_nums);
}


void eye(){
stroke(120,200,135);
fill(170,120,35);
ellipse(100,100,180,180);
fill(170,120,35);
ellipse(800,100,180,180);
fill(255,0,0);
triangle(100,100,70,90,100,70);
fill(0,0,255);
rectMode(CENTER);
rect(h*2,r,u,h+34);
}

void nose(){
//stroke(230,126,150);
fill(175,137,20);
stroke(169,169,169);
triangle(200,200,500,diameter,700,300);
}

void move(){
if(keyPressed==true){
  diameter=diameter+speed;
  diameter=0;
}else{
  diameter=3;
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

void fish(){
fill(255,100,0);
numbers[0]=89;
numbers[1]=120;
numbers[2]=300;
numbers[3]=33;

textSize(40);
textAlign(LEFT,LEFT);

println(random(0,numbers[1]));
}
