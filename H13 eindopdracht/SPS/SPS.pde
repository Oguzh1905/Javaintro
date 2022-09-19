int spelerkeuze, computerkeuze ;
float rbuttonX,rbuttonY,rbuttonW,rbuttonH,pbuttonX,pbuttonY,pbuttonW,pbuttonH,sbuttonX,sbuttonY,sbuttonW,sbuttonH ;
int a ;

void setup(){
  size ( 800,600 );
  spelerkeuze= 0 ;
  computerkeuze = 0 ;
  a = -1 ;
  //locatie en de grootte van de buttons
  rbuttonX = width/15;
  rbuttonY = height/1.25;
  rbuttonW = width/6;
  rbuttonH = height/10;
  
  pbuttonX = width/2.5;
  pbuttonY = height/1.25;
  pbuttonW = width/5.3;
  pbuttonH = height/10;
  
  sbuttonX = width/1.35;
  sbuttonY = height/1.25;
  sbuttonW = width/5;
  sbuttonH = height/10;
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
  textSize(width/15);
  textAlign(CENTER);
  fill(0);
  text("Steen",width/6.7,height/1.14);
  text("Papier",width/2,height/1.14);
  text("Schaar",width/1.18,height/1.14);
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
      text("computer heeft steen gespeeld", width/2, height/10);
}
  if(computerkeuze == 2){
      textSize(45);
      textAlign(CENTER);
      fill(255);
      text("computer heeft papier gespeeld", width/2, height/10);
  }
    if(computerkeuze == 3){
      textSize(45);
      textAlign(CENTER);
      fill(255);
      text("computer heeft schaar gespeeld", width/2, height/10);
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
    fill(0,255,0);
    text("Het is gelijk spel",width/2, height/2);
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
    fill(0,0,255);
    text("jij wint",width/2, height/2);
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
    fill(0,255,0);
    text("computer wint",width/2, height/2);
    //reset de game
    if(keyPressed){
      spelerkeuze = 0;
      computerkeuze = 0;
    }
  }
}
