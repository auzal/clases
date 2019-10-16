PFont fuente;

char letra;

String palabra;

void setup() {
  size(800, 800);
  fuente = loadFont("Futura-Bold-90.vlw");
  letra = 'a';
  palabra = "hola";
  textFont(fuente);
  textAlign(CENTER, CENTER);
  
  
}

void draw() {
  background(255);
  fill(255,0,0);
  //text(letra, mouseX, mouseY);
  fill(map(mouseX, 0,width,255,0), map(mouseX, 0,width,0, 255), 0);
  text(palabra, mouseX, mouseY + 70);
  
}

void mousePressed(){
  palabra = palabra + " chicxs";
}