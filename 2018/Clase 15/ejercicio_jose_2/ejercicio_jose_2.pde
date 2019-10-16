
int tiempo_maximo;


void setup() {
  size(800, 800);
  background(116, 48, 66);
  stroke(255, 186, 100);
  strokeWeight(2);
  tiempo_maximo = 5000;
}


void draw() {
  if (millis() < tiempo_maximo) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}