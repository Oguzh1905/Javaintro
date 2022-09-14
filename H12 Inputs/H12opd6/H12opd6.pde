int noob;
int pro;

void setup(){
 size(500,500);
 noob=150;
 pro=150;
}

void draw(){
   background(255);
   fill(255,50,60);
  rect(noob,pro,40,40); 
}

void keyPressed(){
   if(keyCode == 37){
     noob = noob - 10;
   }
   if(keyCode == 38){
     pro = pro - 10;
     
   }
   if(keyCode == 39){
     noob = noob + 10;
     
   }
   if(keyCode == 40){
     pro = pro + 10;
   }
}
