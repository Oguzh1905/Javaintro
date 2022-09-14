void setup(){
  size(1000,750);
}

void draw(){
  int r=floor(random(256));
  int g=floor(random(256));
  int b=floor(random(256));
  stroke(r,g,b);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

void mouseReleased(){
   background(0);
  
 
}
