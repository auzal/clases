PFont fuente;

void setup() {
  size(800, 800);
  fuente = loadFont("Futura-Bold-90.vlw");
  textFont(fuente);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  text("HOLA", 400, 400);
  
}