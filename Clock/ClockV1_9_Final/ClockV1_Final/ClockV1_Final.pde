
float x;
float y;
float h1; //height
float w;
int xPos=200;
int yPos=200;
int xPos1=200;
int yPos1=200;
int storedMinute;
int minute;



void setup() {
  fullScreen();
  frameRate(30);

  x = 0;
  y = 0;
  h1 = height/24;
  w = width/24;


  println (width);
  println (height);
}



void draw() {

  int m = minute();
  int h = hour();
  int s = second();
  minute = minute();
 



  if ((h>17) || (h<7)) {    //Make background night sky color  
    background (48, 24, 96);
  } else {
    background(135, 206, 235);
  }
  // Adds a 0 to minutes & hours when less than 10.
  String om = "";
  if (m<10) {
    om = "0";
  } else {
    om = "";
  }
  String oh = "";
  if (h<10) {
    oh = "0";
  } else {
    oh = "";
  }

  //Clock
  float val = map(second(), 0, 60, 0, 127.5);
  float val1 = map(second(), 0, 60, 127.5, 255);
  String t = oh + h + ":" + om + m;
  textSize(300);
  textAlign(CENTER, CENTER);
  if (storedMinute != minute()) {
    fill(0);
  }
  if ((h>7) || (h<19)) {
    fill(0, val1, 0);
  }
  fill(0, val, 0);

  text(t, x+(w*12), y+(h1*12));

  //Grass
  if ((h>7) || (h<19)) {
    fill(1, 170, 17);
  }                        //change arc color for night. 
  fill (0, 75, 17);



  noStroke();
  arc(x+(w*12+100), y+h1*25, x+(w*40), y+h1*18, PI, 2*PI);


  //Shadow
  textSize(300);
  textAlign(CENTER, CENTER);
  fill(0, 0, 0, 50);
  pushMatrix();
  if ((h==8) || (h==20)) {
    translate (x+w*.9, y+0);
  }
  if ((h==9) || (h==21)) {
    translate (x-w*1.9, y+0);
  }
  if ((h==10) || (h==22)) {
    translate (x-w*3.9, y+0);
  }
  if ((h==11) || (h==23)) {
    translate (x-w*5.9, y+0);
  }
  if ((h==12) || (h==0)) {
    translate (x-w*7.9, y+0);
  }
  if ((h==13) || (h==1)) {
    translate (x-w*9.9, y+0);
  }
  if ((h==14) || (h==2)) {
    translate (x-w*11.9, y+0);
  }
  if ((h==15) || (h==3)) {
    translate (x-w*13.9, y+0);
  }
  if ((h==16) || (h==4)) {
    translate (x-w*15.9, y+0);
  }
  if ((h==17) || (h==5)) {
    translate (x-w*17.9, y+0);
  }
  if ((h==18) || (h==6)) {
    translate (x-w*19.9, y+0);
  }
  text(t, x+w*19.9, y+h1*20);
  popMatrix();

  // Sun/Moon
  if ((h>17) || (h<7)) {
    fill (255, 255, 255);     //turns sun to moon.
  } else {
    fill (249, 250, 87);
  }

  noStroke();
  pushMatrix();
  if ((h==8) || (h==20)) {
    translate (x+w*3, y-h1*2);
  }
  if ((h==9) || (h==21)) {
    translate (x+w*5, y-h1*4);
  }
  if ((h==10) || (h==22)) {
    translate (x+w*7, y-h1*6);
  }
  if ((h==11) || (h==23)) {
    translate (x+w*9, y-h1*8);
  }
  if ((h==12) || (h==0)) {
    translate (x+w*12, y-h1*9);
  }
  if ((h==13) || (h==1)) {
    translate (x+w*15, y-h1*8);
  }
  if ((h==14) || (h==2)) {
    translate (x+w*17, y-h1*6);
  }
  if ((h==15) || (h==3)) {
    translate (x+w*19, y-h1*4);
  }
  if ((h==16) || (h==4)) {
    translate (x+w*21, y-h1*2);
  }
  if ((h==17) || (h==5)) {
    translate (x+w*22, y-h1*1);
  }
  if ((h==18) || (h==6)) {
    translate (x+w*23, y+0);
  }
  ellipse (x, y+h1*12, 350, 350);
  popMatrix();

  storedMinute = minute;
}