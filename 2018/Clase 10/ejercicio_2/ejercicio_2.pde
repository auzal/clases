int lado = 200; // declaro una variable para tener a mano el lado de los cuadrados que voy a dibujar
boolean bandera = true; // declaro una variable booleana que me va a ayudar para
// determinar de qué color pintar las cosas

void setup() {
  size(500, 500);
}

void draw() {

  strokeWeight(10); // fijo el ancho de contorno en 10 px
  background(0); // pinto el fondo de negro
  if (bandera) { // si bandera es "verdadero"
    stroke(255, 128, 0); // contorno naranja
    fill(0, 255, 255); // relleno celeste
  } else { // sino, es decir, si es "falso"
    stroke(0, 255, 255); // contorno celeste
    fill(255, 128, 0); // relleno naranja
  }
  rect(0, 0, lado, lado); // rectangulo de la esquina sup. izq.
  rect(width-lado, 0, lado, lado); // sup. der.
  rect(width-lado, height-lado, lado, lado); // inf. der.
  rect(0, height-lado, lado, lado); // inf. izq.
}

void mousePressed() { // cada vez que presiono el mouse
  bandera = !bandera; // hago que bandera valga su valor contrario
  // es decir, si bandera era falso, pasa a ser verdadero y viceversa
  // esto hace que cada vez que apretamos el mouse, cambie la lógica de colores
}