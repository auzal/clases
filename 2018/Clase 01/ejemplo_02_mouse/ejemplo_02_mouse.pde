void setup() {
  size(500, 500);
}


void draw() {
  background(0); // la función background() pinta el fondo. 0 es negro, 255 es blanco, los valores intermedios, grises
  rect(250, 250, 50, 50);
  ellipse(mouseX, mouseY, 50, 50); // las variables de sistema mouseX y mouseY, guardan todo el tiempo la posicion del puntero del mouse
  // en consecuencia, este circulo se dibuja siempre en la posicion del mouse
}