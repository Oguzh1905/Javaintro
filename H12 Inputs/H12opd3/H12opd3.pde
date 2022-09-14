

void setup(){
  background(0,0,0);
  size(1000,750);
  noStroke();
}

void draw(){
  
}

void mouseReleased(){
  int r=floor(random(256));
  int g=floor(random(256));
  int b=floor(random(256));
  fill(r,g,b);
 rect(mouseX,mouseY,30,30); 
}
