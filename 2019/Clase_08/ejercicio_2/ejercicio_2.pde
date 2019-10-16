void setup() {

  size(800, 800);
  noCursor();
}

void draw() {
  randomSeed(0);
  background(255);
  for (int j = 0; j < 200; j++) {
    dibujarBlanco(random(width), random(height), 100, 8);
  }

  dibujarBlanco(mouseX, mouseY, 300, 4);
}
