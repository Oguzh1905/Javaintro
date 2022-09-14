int seconden;
int stopwatch;
int miles;
boolean begin= false;
boolean start;
void setup(){
  size(500,500);
}

void draw(){
  background(0,0,0);
  seconden=millis()/1000;
  stopwatch=0+seconden;
  miles=100+(millis()%1000);
 text("Stopwatch:"+stopwatch+"."+miles,220,150);
}

void keyPressed(){
  if(keyCode==32){
    
    
  }
}
