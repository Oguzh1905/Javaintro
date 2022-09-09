import controlP5.*;

ControlP5 cp;
Textfield TF1;
Button knop1;

void setup(){
  size(500,500);
  
  cp=new ControlP5(this);
  TF1=cp.addTextfield("TextField1").setText("typ iets").setSize(200,50).setPosition(150,200).setCaptionLabel("doei");
  knop1=cp.addButton("Knop1").setCaptionLabel("drukopmij");
}

void draw(){
  background(0,0,0);
}

void Knop1(){
  println("hoi mijn naam is:"+TF1.getText());
}
