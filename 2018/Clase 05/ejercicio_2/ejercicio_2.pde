void setup() {
  size(500, 500);
  background(255);
  noStroke();
}


void draw() {
  fill(map(mouseX, 0, width, 255, 0), map(mouseX, 0, width, 0, 255), 0);
  ellipse(mouseX, mouseY, 60, 60);
}