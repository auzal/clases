String [] poema;
PFont fuente;
String [] palabras;
int indice ;

float x;
float y;

void setup() {
  //  size(800, 800);
  fullScreen();
  poema = loadStrings("of travel.txt");
  fuente = loadFont("SourceSansPro-ExtraLight-40.vlw");
  textFont(fuente);
  palabras = splitTokens(poema[0], " ");
  indice = 0;
  background(0);
  textAlign(CENTER, CENTER);
}


void draw() {
}

void keyPressed() {
  if (indice < palabras.length ) {
    float nuevo_x = random(50, width-50);
    float nuevo_y = random(50, height-50);
    text(palabras[indice], nuevo_x, nuevo_y);
    stroke(255);
    if (indice>0)
      line(x, y, nuevo_x, nuevo_y);
    indice++;
    x = nuevo_x;
    y= nuevo_y;
  }
}