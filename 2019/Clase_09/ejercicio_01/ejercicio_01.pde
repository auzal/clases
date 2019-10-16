void setup() {
  size(600, 600);
  background(255);
}

void draw() {
}

void mouseMoved(){
  fill(255,0,0);
  dibujarCincoCirculos();
}

void keyPressed(){
  fill(0);
  dibujarUnosCirculos(40);
}


void dibujarCincoCirculos() {
  for (int i = 0; i < 5; i++) {
    ellipse(random(mouseX-20, mouseX+20), random(mouseY-20, mouseY+20), 10, 10);
  }
}

void dibujarUnosCirculos(int cuantos) {
  for (int i = 0; i < cuantos; i++) {
    ellipse(random(mouseX-20, mouseX+20), random(mouseY-20, mouseY+20), 10, 10);
  }
}
