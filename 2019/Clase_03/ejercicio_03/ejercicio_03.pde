void setup() {
  size(600, 600);
  //frameRate(5); uso frameRate() para controlar la cantidad de cuadros por segundo que dibuja processing
}


void draw() {
  line(mouseX, mouseY, random(width), random(height));
}