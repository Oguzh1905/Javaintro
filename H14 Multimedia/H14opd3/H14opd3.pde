import processing.sound.*;

SoundFile file;

void setup() {
  file = new SoundFile(this, "muziek/demons.mp3");
  file.rate(1);
  file.amp(1);
  file.play();
}    

void draw() {
  
}
