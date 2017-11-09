int s = second();
int m = minute();
int h = hour();


void setup() {
  //size(1280,800);
  //pixelDensity(2);
  //photo = loadImage("SunnyAfternoon.jpg");
  fullScreen();
  background(135,206,235);
  
  println(width);
  println(height);
}

void draw() {
  fill(1,166,17);
  noStroke();
  arc(720, 900, 1450, 450, PI, 2*PI);
  fill(249,250,87);
  ellipse(150,150,200,200);
  
  stroke(0);
  line(300,300,350,350);
  line(350,350,400,300);

  line(500,500,550,550);
  line(550,550,600,500);
  
  line(800,100,850,150);
  line(850,150,900,100);
  
}