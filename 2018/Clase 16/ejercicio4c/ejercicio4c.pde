String [] poema;
PFont fuente;
String [] palabras;
int indice ;

void setup() {
  size(800, 800);
  poema = loadStrings("of travel.txt");
  fuente = loadFont("SourceSansPro-ExtraLight-40.vlw");
  textFont(fuente);
  palabras = splitTokens(poema[0], " ");
  indice = 0;
}


void draw() {
  background(0);
  text(palabras[indice], 50, 50);
}

void keyPressed() {
  if (indice < palabras.length -1) {
    indice ++;
  } else
    indice = 0;
}