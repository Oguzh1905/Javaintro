import controlP5.*;
ControlP5 cp;
Button knop1;
Button knop2;
Button knop3;

int ouders=50;
int studenten =20;
int antwoord;

void setup(){
  size(500,500);
  
 cp=new ControlP5(this);
 knop1= cp.addButton("Knop1")
 .setPosition(250,250)
 .setSize(150,150)
 .setCaptionLabel("studenten");
 
 knop1.setColorBackground(color(255,0,0));
 knop1.setColorForeground(color(0,255,0));
 
  cp=new ControlP5(this);
 knop2= cp.addButton("Knop2")
 .setPosition(250,50)
 .setSize(150,150)
 .setCaptionLabel("ouders");
 
   cp=new ControlP5(this);
 knop3= cp.addButton("Knop3")
 .setPosition(100,350)
 .setSize(80,80)
 .setCaptionLabel("totaal");
 
}
void draw(){
}


void Knop1(){
  text(studenten,ouders,50,300);
}
void Knop2(){
  text(ouders,50,100);
    
}
void Knop3(){
  text(antwoord=ouders+studenten,100,200);
}
