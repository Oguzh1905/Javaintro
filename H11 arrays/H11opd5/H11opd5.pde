boolean gevonden= false;
String zoeknoob="Jan";
String[] namen = {"Jan", "Peter", "Tomas", "Pan", "Sahbi"};

void setup(){
  gevonden = false;
  for(int i = 0; i < namen.length; i++){
    if (namen[i] == zoeknoob){
    gevonden = true;
    }
  }

  
  if(gevonden){
  println(zoeknoob+" "+"bestaat");
  }
}
