int largo_max;
float largo_dibujado;

void setup() {
  size(800, 800);
  fill(0,90);
  noStroke();
  largo_max = 500;
  largo_dibujado = 0;
  background(255);
  
}


void draw() {
  if (largo_dibujado < largo_max) {
    float diam = random(5, 50);
    ellipse(random(width), random(height), diam, diam);
    largo_dibujado += PI * diam;
  }
}


void mousePressed(){
  largo_dibujado = 0;
  fill(random(255), random(255), random(255), 90);

}