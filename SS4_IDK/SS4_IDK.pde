int v=130;
int r=145;
int q=175;


void setup(){
background(150);
size(800,800);
}

void draw(){
strokeWeight(30);
line(200,130,150,200);
ellipseMode(CENTER);
ellipse(120,120,100,100);
fill(255,0,0);

/*while(v<width){
  line(120,130,v,175);
  v-=100;
  }*/
}
