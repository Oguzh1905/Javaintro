PImage goku;
PImage luffy;
PImage andrewtate;

void setup(){
  size(500,500);
  goku = loadImage("Images/Goku.jpg");
  goku.resize(250,250);
  luffy = loadImage("Images/Luffy.jpg");
  luffy.resize(250,300);
  andrewtate = loadImage("Images/AndrewTate.jpg");
  andrewtate.resize(250,500);
}

void draw(){
  
  image(goku, 0, 0);
  image(luffy, 0, 200);
  image(andrewtate, 250, 0);
}
