int m = minute();
int h = hour();
int s = second();

float x;
float y;
float h1;
float w;


void setup() {
  fullScreen();
  if (h>17 && h<7) background (48,24,96); //Make background night sky color

  else background(135,206,235);
  //background(135,206,235);
  
  x = 0;
  y = 0;
  h1 = height/24;
  w = width/24;

println (width);
println (height);
}



void draw() {
  
  //Grass, & sun/moon
  
  if (h>17 && h<7) fill (0,75,17); //change arc color for night. 
  else fill(1,166,17);
  noStroke();
  arc(x+(w*12+10), y+h1*25, x+(w*25), y+h1*18, PI, 2*PI);
  //if (h>6 && h<11) fill
  if (h>17 && h<7) fill (255,255,255); //turns sun to moon.
  else fill (249,250,87);
  ellipse(x+w*12,y+h1*4,w*4,h*16); //need to add if so move sun to left side before noon and right after noon
  
 String om = "";
 if(m<10) om = "0";
 else om = "";
  
  //Clock
  String t = h + ":" + om + m;
  textSize(250);
  if (h>17 && h<7) fill (192,192,192); //Changes Clock from white to silver for night
  else fill(255,255,255);
  text(t,x+w*7.5,y+h1*8,x+w*15,y+h1*15);

//Shadow

 textSize(250);
 if (h>17 && h<7) fill(255,255,255); //changes shadow from black to white
 else fill(0);
 text(t,x+w*7.5,y+h1*17.5,x+w*15,y+h1*17.5);

}