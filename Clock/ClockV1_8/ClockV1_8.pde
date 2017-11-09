
float x;
float y;
float h1; //height
float w;
//float x1;
//float y1;


void setup() {
  fullScreen();

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
  String t = oh + h + ":" + om + m;
  textSize(250);
  if ((h>17) || (h<7)) {    //Changes Clock from white to silver for night
    fill (192, 192, 192); 
  } 
  else {
    fill(255, 255, 255);
  }
  textAlign(CENTER, CENTER);
  text(t, x+(w*12), y+(h1*12));

//Grass
  if ((h>17) || (h<7)) {      //change arc color for night. 
    fill (0, 75, 17);
  } else {
    fill(1, 166, 17);
  }
  noStroke();
  arc(x+(w*12+10), y+h1*25, x+(w*25), y+h1*18, PI, 2*PI);

  //Shadow
  textSize(250);
  textAlign(CENTER, CENTER);
    if ((h>6) && (h<12) || (h>19 && h<24)) {
    translate (x+w*8, y+0);
  }
  if ((h>3) && (h<7) || (h>15) && (h<20)) {
    translate (x-w*8, y+0);
  }
  fill(0);
  text(t, x+w*12, y+h1*20);

 
  //Sun/Moon & rotation
  //float x1;
  //float y1;
  //float x1 = map(second(), 15, 45, TWO_PI, 0)+PI;
  //float y1 = map(second(), 15, 45, TWO_PI, 0)+PI;

  //x1 = cos(s)*(w*12)+width/2-PI;
  //y1 = sin(s)*(h1*12)+(h1*12)-PI;

  if ((h>17) || (h<7)) {
    fill (255, 255, 255);     //turns sun to moon.
  } else {
    fill (249, 250, 87);
  }
  // ellipse (x+w*12, y+h1*4, 250, 250); 
  // ellipse (x+w*20, y+h1*8, 250, 250);
  if ((h>11) || (h<16) && (h>=0 || h<4)) {
    translate (x+w*8, y-h1*4);
  }
  if ((h>3) || (h<7) && (h>15) || (h<20)) {
    translate (CENTER, y+0);
  }
  
  ellipse (x+w*4, y+h1*8, 250, 250);
}