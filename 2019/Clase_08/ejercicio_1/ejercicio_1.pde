float lado_celda;

void setup() {
  size(800, 800);
  lado_celda = width / 16;
}

void draw() {

  background(255);
  fill(0);

  for (int x = 0; x <= width; x += lado_celda) {
    for (int y = int(lado_celda/2); y <= height; y+= lado_celda) {
      float diametro = map(y, lado_celda/2, height, lado_celda, lado_celda/5);
 
      ellipse(x, y, diametro, diametro);
      
    }
  }
}
