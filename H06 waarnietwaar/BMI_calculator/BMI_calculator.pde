size(800,500);
background(255,255,255);

float gewicht=78;
float lengte= 1.75;
float leeftijd = 17;
float BMI = 0;

BMI= gewicht/(lengte*lengte);
BMI *=10;
BMI= round (BMI);
BMI/=10;
println(BMI);

rect(120,150,140,30);
rect(120,200,140,30);
rect(120,250,140,30);

fill(0,0,0);
text ("Gewicht: "+ gewicht+ "KG",130,170);
text ("Leeftijd: "+ leeftijd+ "jaar",130,220);
text ("Lengte: "+ lengte+ "meter",130,270);


if(leeftijd<70){
if(BMI<18.5){
  fill(255, 255, 0);
  }else if (BMI<25){
  fill(0, 255, 0);
  }else if (BMI<30){
  fill(255, 255, 0);
  }else{
  fill(255, 0, 0);
  }
}else{
  if(BMI<22){
   fill(255,255,0);
  }else if(BMI<28){
   fill(0,255,0);
  }else if (BMI<30){
   fill(255,255,0);
  }else{
    fill(255,0,0);
}
  
}
textSize(30);
text("BMI:" +BMI,310,225);

textSize(30);
text("=", 275,225);
