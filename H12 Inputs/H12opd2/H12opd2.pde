int seconden;
int spaties=0;
int tijdover;
boolean tijd=true;
void setup(){
  size(500,500);
}

void draw(){
  background(0,0,0);
  seconden=millis()/1000;
  tijdover=10-seconden;
  if(tijdover<=0){
   tijdover=0; 
  }
  if(seconden>=10){
   tijd=false; 
  }
  text("Spaties:"+spaties,150,150);
  text("Tijdover:"+tijdover,220,150);
}

void keyReleased(){
  if(keyCode==32&&tijd){
    spaties++;
    
  }
}
