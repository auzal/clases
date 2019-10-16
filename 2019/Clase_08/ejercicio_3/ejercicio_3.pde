float lado_celda;

void setup() {
  size(800, 800);
  lado_celda= width/4;
}


void draw() {
  background(128);
  noStroke();

  boolean correr = true;

  for (int y = 0; y <= height + lado_celda/3; y += lado_celda/3) {
    
    int inicio_x = 0;
    if (correr) {
      inicio_x = int(lado_celda/2);
    }
    for (int x = inicio_x; x <= width; x += lado_celda) {
      dibujarBlanco(x, y, lado_celda, 6);
    }
    correr = ! correr;
  }
}





void dibujarBlanco(float x, float y, float diam, int anillos) {
  boolean negro = false;  
  for (int i = int(diam); i > 0; i -= diam/anillos) {
    if (negro) {
      fill(0);
    } else {
      fill(255);
    }
    ellipse(x, y, i, i);
    negro = !negro;
  }
}
