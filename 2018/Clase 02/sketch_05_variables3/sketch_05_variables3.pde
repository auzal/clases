int rojo;

void setup() {
  size(500,500);
  rojo = 0;
}

void draw() {
  background(rojo,0,0); // este es igual al de la elipse, pero uso una variable que crece todo el tiempo para controlar color
  fill(0,rojo,0);
  ellipse(width/2, height/2, rojo, rojo);
  rojo = rojo + 1;
}