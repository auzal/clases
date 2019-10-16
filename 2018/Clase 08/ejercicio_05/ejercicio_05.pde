void setup() {
  size(800, 800);
  noFill();
  stroke(255, 128, 0);
}


void draw() {

  background(255);

  int cantidad_de_circulos = int(dist(mouseX, mouseY, width/2, height/2)/5);

  for (int i = 0; i <= cantidad_de_circulos; i ++) {

    ellipse(width/2, height/2, i * 10, i * 10);
  }
}