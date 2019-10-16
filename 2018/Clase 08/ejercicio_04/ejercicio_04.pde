void setup() {
  size(800, 800);
  noFill();
  stroke(255, 128, 0);
}


void draw() {

  background(255);
  for (int i = 0; i < 50; i ++) {
    ellipse(mouseX, mouseY, i * 10, i * 10);
  }
}