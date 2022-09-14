int seconden;
int spaties=0;
boolean tijd=true;
void setup(){
  size(500,500);
}

void draw(){
  background(0,0,0);
  seconden=millis()/1000;
  if(seconden>=10){
   tijd=false; 
  }
  text(spaties,150,150);
}

void keyReleased(){
  if(keyCode==32&&tijd){
    spaties++;
    
  }
}
