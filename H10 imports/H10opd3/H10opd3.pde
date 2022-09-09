import controlP5.*;
float mijnGetal;
String mijnstring;
float antwoord;
ControlP5 cp;
Textfield TF1;
Button knop1;

void setup(){
  size(500,500);
  
  cp = new ControlP5(this);
  TF1 = cp.addTextfield("TextField1").setText("typ iets").setSize(200,50).setPosition(150,200).setCaptionLabel("doei");
  knop1=cp.addButton("Knop1").setCaptionLabel("drukopmij");
}

void draw(){
  background(0,0,0);
}
void Knop1(){
  mijnstring=TF1.getText();
  mijnGetal=float(mijnstring);
  println(antwoord=1.21*mijnGetal);
  
}
