void setup() {
  size(700, 700);
}


void draw() {

  float cantidad =  map(mouseX, 0, width, 1, 50);
  for (int i = 0; i < cantidad; i++) {
    pushMatrix();
    translate(random(width), random(height));
    float lado = map(mouseY, height, 0, 5, 50);
    triangle(-lado, 0, lado, 0, 0, -lado*1.5);
    popMatrix();
  }
}