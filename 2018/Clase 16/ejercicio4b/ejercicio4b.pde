String [] poema;
PFont fuente;

void setup(){
  size(800,800);
  poema = loadStrings("of travel.txt");
  fuente = loadFont("SourceSansPro-ExtraLight-40.vlw");
  textFont(fuente);

}


void draw(){
  background(0);
  text(poema[0],20,20);


}