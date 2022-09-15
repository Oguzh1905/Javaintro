PImage andrewtate;
void setup(){
  size(500,500);
  andrewtate = loadImage("Images/AndrewTate.jpg");
  andrewtate.resize(250,500);
}


void draw(){
  image(andrewtate, 0, 0);
}
