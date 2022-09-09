import controlP5.*;

ControlP5 cp;
Button knop1;

void setup(){
  size(500,500);
  
 cp=new ControlP5(this);
 knop1= cp.addButton("Knop1")
 .setPosition(250,250)
 .setSize(150,150)
 .setCaptionLabel("klikmij");
 
 knop1.setColorBackground(color(255,0,0));
 knop1.setColorForeground(color(0,255,0));
 
  cp=new ControlP5(this);
 knop1= cp.addButton("Knop2")
 .setPosition(250,50)
 .setSize(150,150)
 .setCaptionLabel("klikmij");
 
 knop1.setColorBackground(color(0,255,0));
 knop1.setColorForeground(color(255,0,0));
 

}

void draw(){
}
void Knop1(){
  println("goed gedaan");
}
void Knop2(){
  println("helaas fout");
}
