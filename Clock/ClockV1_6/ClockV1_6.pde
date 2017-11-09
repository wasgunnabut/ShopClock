//How to map position?
//How to map a color range for fill?
//Some of my elements move depending on screen size.
//



float x;
float y;
float h1;
float w;
float st;


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
  background (48,24,96);
  } 
  else {
    background(135,206,235);
  }
  
  
  //Grass, & sun/moon
  if ((h>17) || (h<7)) {      //change arc color for night. 
    fill (0,75,17);
  }       
  else {
    fill(1,166,17);
  }
  noStroke();
  arc(x+(w*12+10), y+h1*25, x+(w*25), y+h1*18, PI, 2*PI);
  if ((h>17) || (h<7)) {
    fill (255,255,255);     //turns sun to moon.
  }
  else {
    fill (249,250,87);
  }
  
  ellipse((x+w*1),(y+h1*12),250,250); //need to add if so move sun to left side before noon and right after noon
  st = st + (w*2);
 String om = "";
 if(m<10) {
   om = "0";
 }
 else {
   om = "";
 }
  
  //Clock
  String t = h + ":" + om + m;
  textSize(250);
  if ((h>17) || (h<7)) {
  fill (192,192,192);
} //Changes Clock from white to silver for night
  else {
    fill(255,255,255);
  }
  textAlign(CENTER,CENTER);
  text(t, x+(w*12), y+(h1*12));

//Shadow
 textSize(250);
 textAlign(CENTER,CENTER);
 fill(0);
 text(t, x+w*12, y+h1*20);

}