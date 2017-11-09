int m = minute();
int h = hour();

float x;
float y;
float h1;
float w;


void setup() {
  //size(1280,800);
  //pixelDensity(2);
  //photo = loadImage("SunnyAfternoon.jpg");
  fullScreen();
  background(135,206,235);
  
  x = 0;
  y = 0;
  h1 = height/24;
  w = width/24;

}

void draw() {
  
  //Grass, & sun/moon
  fill(1,166,17);
  noStroke();
  arc(x+(w*12+10), y+h1*25, x+(w*25), y+h1*12, PI, 2*PI);
  fill(249,250,87);
  ellipse(x+w*4,y+h1*4,w*4,h*10);
  
  String om = "";
  if(m<10) om = "0";
  else om = "";
  
  //Clock
  String t = h+":"+om+m;
  textSize(250);

  text(t,x+w*5,y+h1*8,x+w*15,y+h1*15);


}