int lado;

void setup() {
  size(800, 800);
  lado = 100;
}

void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  rotate(radians(45));
  translate(-width/2, -height/2);
  for (int y = 0; y < height; y += lado+10) {
    for (int x = 0; x < width; x += lado + 10) {

      pushMatrix();
      translate(x, y);
      beginShape();
      vertex(0, 0);
      vertex(lado/2, lado/2);
      vertex(lado, lado/2);
      vertex(lado, lado);
      vertex(0, lado);
      endShape(CLOSE);
      popMatrix();
    }
  }
}
