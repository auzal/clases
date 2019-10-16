PFont fuente;

void setup() {

  size(700, 700);
  fuente = loadFont("SFProText-Heavy-255.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textSize(width*1.9);
}


void draw() {
  background(0);
  text("a", width/2, height/2-150);
}