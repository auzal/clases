boolean blanco;

void setup() {
  size(800, 800);
  noStroke();
  blanco = false;
}


void draw() {
  background(255);

  int cantidad_de_circulos = int(dist(mouseX, mouseY, width/2, height/2)/5);

  blanco = false;

  for (int i = cantidad_de_circulos; i > 0; i --) {
    if (blanco) {
      fill(255);
      blanco = false;
    } else {
      fill(0);
      blanco = true;
    }

    ellipse(width/2, height/2, i * 10, i * 10);
    //blanco = !blanco;  // hace lo mismo que el c´digo del if de arriba
  }
}