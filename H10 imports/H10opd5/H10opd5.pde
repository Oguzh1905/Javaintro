import controlP5.*;
float mijnGetal;
float mijnCijfer;
String mijnstring;
String mijnString;
float antwoord;
ControlP5 cp;
Textfield TF1;
Textfield TF2;

Button knop1;
Button knop2;
Button knop3;
Button knop4;

void setup(){
  size(500,500);
  
  cp = new ControlP5(this);
  TF1 = cp.addTextfield("").setText("typ iets").setSize(100,30).setPosition(10,200);
  cp = new ControlP5(this);
  TF2 = cp.addTextfield("").setText("typ iets").setSize(100,30).setPosition(120,200);
  knop1=cp.addButton("Knop1").setCaptionLabel("X").setSize(20,30).setPosition(230,200);
  knop2=cp.addButton("Knop2").setCaptionLabel("/").setSize(20,30).setPosition(255,200);
  knop3=cp.addButton("Knop3").setCaptionLabel("+").setSize(20,30).setPosition(280,200);
  knop4=cp.addButton("Knop4").setCaptionLabel("-").setSize(20,30).setPosition(305,200);
}


void draw(){
  background(0,0,0);
}
void Knop1(){
  mijnstring=TF1.getText();
  mijnString=TF2.getText();
  mijnGetal=float(mijnstring);
  mijnCijfer=float(mijnString);
  println(antwoord=mijnGetal*mijnCijfer);
}
void Knop2(){
  mijnstring=TF1.getText();
  mijnString=TF2.getText();
  mijnGetal=float(mijnstring);
  mijnCijfer=float(mijnString);
  println(antwoord=mijnGetal/mijnCijfer);
}
void Knop3(){
  mijnstring=TF1.getText();
  mijnString=TF2.getText();
  mijnGetal=float(mijnstring);
  mijnCijfer=float(mijnString);
  println(antwoord=mijnGetal+mijnCijfer);
}
void Knop4(){
  mijnstring=TF1.getText();
  mijnString=TF2.getText();
  mijnGetal=float(mijnstring);
  mijnCijfer=float(mijnString);
  println(antwoord=mijnGetal-mijnCijfer);
}
