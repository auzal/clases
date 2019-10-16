
int largo_max;
float largo_dibujado;


void setup() {
  size(800, 800);
  background(116, 48, 66);
  stroke(255, 186, 100);
  strokeWeight(2);
  largo_max = 500;
  largo_dibujado = 0;
}


void draw() {
  if (largo_dibujado < largo_max) {
    line(pmouseX, pmouseY, mouseX, mouseY);
    largo_dibujado += dist(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void mousePressed(){

  largo_dibujado = 0;

}