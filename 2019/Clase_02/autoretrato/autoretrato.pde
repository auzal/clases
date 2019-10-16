void setup() {
  size(800, 800);
  background(150, 0, 150); // pinto el fondo de mangenta
  rectMode(CENTER); // la función rectMode() determina desde donde se dibujan los rectángulos. Por defecto se dibujan desde la esquina superior izquierda
  // si llamamos a rectMode(CENTER) hacemos que se dibujen desde el centro
}

void draw() {
  noStroke(); // quito el contorno a lo que vaya a dibujar
  // y dibujo una serie de rectángulos que arman una especie de retraro muy simple
  fill(12, 19, 90); 
  rect(400, 400, 200, 200);
  fill(0);
  rect(400, 600, 200, 200);
  fill(245,189,99);
  rect(400, 200, 200, 200);
  rect(400-125,400+20,50,200);
  rect(400+125,400+20,50,200);
  fill(12, 19, 90);
  rect(400-125,400-55,50,50);
  rect(400+125,400-55,50,50); 
}
