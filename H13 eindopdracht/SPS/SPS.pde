//variablen
int spelerkeuze, computerkeuze ;
float rbuttonX,rbuttonY,rbuttonW,rbuttonH,pbuttonX,pbuttonY,pbuttonW,pbuttonH,sbuttonX,sbuttonY,sbuttonW,sbuttonH ;
int a ;

void setup(){
  size ( 800,600 );
  spelerkeuze= 0 ;
  computerkeuze = 0 ;
  a = -1 ;
  //locatie en de grootte van de buttons
  //steen knop
  rbuttonX = 55;
  rbuttonY = 485;
  rbuttonW = 145;
  rbuttonH = 50;
  //papier knop
  pbuttonX = 330;
  pbuttonY = 485;
  pbuttonW = 145;
  pbuttonH = 50;
  //steen knop
  sbuttonX = 595;
  sbuttonY = 485;
  sbuttonW = 165;
  sbuttonH = 50;
}

void draw(){
  background(0);
  computer();
  buttons();
  buttonsclicked();
  results();
}

//wat er gaat gebeuren als je op 1 van de knoppen klikt
void buttons(){
  fill(255);
  rect(rbuttonX,rbuttonY,rbuttonW,rbuttonH);
  rect(pbuttonX,pbuttonY,pbuttonW,pbuttonH);
  rect(sbuttonX,sbuttonY,sbuttonW,sbuttonH);
  textSize(45);
  textAlign(CENTER);
  fill(0);
  text("Steen",125,525);
  text("Papier",400,525);
  text("Schaar",675,525);
}

void buttonsclicked(){
  if(mousePressed){
    if(mouseX > rbuttonX && mouseX < rbuttonX + rbuttonW && mouseY > rbuttonY && mouseY < rbuttonY + rbuttonH && computerkeuze == 0){
      spelerkeuze = 1;//steen
      computerkeuze = (int)random(1, 4);//random keuze van computer
}
  if(mouseX > pbuttonX && mouseX < pbuttonX + pbuttonW && mouseY > pbuttonY && mouseY < pbuttonY + pbuttonH && computerkeuze == 0){
      spelerkeuze = 2;//papier
      computerkeuze = (int)random(1, 4);//random keuze van computer
}
  if(mouseX > sbuttonX && mouseX < sbuttonX + sbuttonW && mouseY > sbuttonY && mouseY < sbuttonY + sbuttonH && computerkeuze == 0){
      spelerkeuze = 3;//schaar
      computerkeuze = (int)random(1, 4);//random keuze van computer
}
  }
}
//verterlt wat de computer heeft gespeeld
void computer(){
  if(a == -1){
    if(computerkeuze == 1){
      textSize(45);
      textAlign(CENTER);
      fill(255);
      text("computer heeft steen gespeeld", 400, 100);
}
  if(computerkeuze == 2){
      textSize(45);
      textAlign(CENTER);
      fill(255);
      text("computer heeft papier gespeeld", 400, 100);
  }
    if(computerkeuze == 3){
      textSize(45);
      textAlign(CENTER);
      fill(255);
      text("computer heeft schaar gespeeld", 400, 100);
}
  }
}

void results(){
    //als het gelijk spel is
  if((spelerkeuze == 1 && computerkeuze == 1)||
  (spelerkeuze == 2 && computerkeuze == 2)||
  (spelerkeuze == 3 && computerkeuze == 3)){
    textSize(45);
    textAlign(CENTER);
    fill(0,0,255);
    text("Het is gelijk spel",400, 300);
    //reset de game
    if(keyPressed){
      spelerkeuze = 0;
      computerkeuze = 0;
    }
 }
  // als de speler wint
  if((spelerkeuze == 2 && computerkeuze == 1) ||
  (spelerkeuze == 1 && computerkeuze == 3) ||
  (spelerkeuze == 3 && computerkeuze == 2)){
    textSize(45);
    textAlign(CENTER);
    fill(0,255,0);
    text("Jij wint",400, 300);
    //reset de game
    if(keyPressed){
      spelerkeuze = 0;
      computerkeuze = 0;
    }
}
//als de computer wint
if((spelerkeuze == 1 && computerkeuze == 2) ||
  (spelerkeuze == 3 && computerkeuze == 1) ||
  (spelerkeuze == 2 && computerkeuze == 3)){
    textSize(45);
    textAlign(CENTER);
    fill(255,0,0);
    text("Computer wint",400, 300);
    //reset de game
    if(keyPressed){
      spelerkeuze = 0;
      computerkeuze = 0;
    }
  }
}
