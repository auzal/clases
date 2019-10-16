int lado = 200; // declaro una variable para tener a mano el lado de los cuadrados que voy a dibujar

void setup() {
  size(500, 500);
}

void draw() {

  strokeWeight(10); // fijo el ancho de contorno en 10 px
  background(0); // pinto el fondo de negro

  stroke(255, 128, 0); // contorno naranja
  fill(0, 255, 255); // relleno celeste

  rect(0, 0, lado, lado); // rectangulo de la esquina sup. izq.
  rect(width-lado, 0, lado, lado); // sup. der.
  rect(width-lado, height-lado, lado, lado); // inf. der.
  rect(0, height-lado, lado, lado); // inf. izq.
}