float m = minute();
float h = hour();

float x;
float y;
float h1;
float w;

float x1 = (map(hour(),7,19,7,w));
float y1 = (map(hour(),7,19,7,h));

void setup() {
  //size(1280,800);
  //pixelDensity(2);
  //photo = loadImage("SunnyAfternoon.jpg");
  fullScreen();
  background(135,206,235);
  
  x = 0;
  y = 0;
  h1 = height/24;
  w = width/12;
 
  
  println(width);
  println(height);
}

void draw() {
  fill(1,166,17);
  noStroke();
  arc(x+(w*6+10), y+h1*25, x+(w*13+10), y+h1*12, PI, 2*PI);
  fill(249,250,87);
  ellipse(x1,y1+12,w,h*5);
  
  stroke(0);
  line(300,300,350,350);
  line(350,350,400,300);

  line(500,500,550,550);
  line(550,550,600,500);
  
  line(800,100,850,150);
  line(850,150,900,100);
  
}