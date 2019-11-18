
Avion [] aviones;
PImage imagen;

void setup() {
  size(800, 800);
  aviones = new Avion[50];
  for (int i = 0; i < aviones.length; i ++) {
    aviones[i] = new Avion();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < aviones.length; i ++) {
    aviones[i].dibujar();
    aviones[i].volar();
  }
}
