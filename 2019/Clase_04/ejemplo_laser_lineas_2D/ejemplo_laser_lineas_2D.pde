// este es un ejemplo igual a ejemplo_laser_simple_2D pero con varias líneas dibujadas en lugar de una figura

void setup() {
  size(600, 600);  
  noStroke();
}


void draw() {
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  stroke(255, 0, 0, 90);

  float y = map(sin(radians(frameCount*2)), -1, 1, 0, height);

  // en lugar de dibujar un triángulo dibujo 100 lineas que configuran una superficie triangular

  int line_count = 100;
  for (int i = 0; i < line_count; i ++) {
    line(map(i, 0, line_count, 0, width), y, width/2, height/2);
  }

  // y todo junto da la sensación de 100 lineas de laser saliendo del mismo punto barriendo una pared de arriba a abajo
}
