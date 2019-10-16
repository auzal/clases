void setup() {
  size(600, 600);  
  noStroke();
}


void draw() {
  // hago este truco de dibujar un rectangulo negro con poca opacidad en lugar de pintar el fondo para quede una estela de movimiento
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);


  fill(255, 0, 0, 90); // fijo el color de relleno como rojo con 90 de opacidad
  float y = map(sin(radians(frameCount*2)), -1, 1, 0, height); // calculo una posición en y que oscila de manera sinusoidal entre 0 y el alto de la pantalla
  // la función map() pasa un valor de un rango de valores a otro, en este caso, de 1,-1 a 0,height
  triangle(0, y, width/2, height/2, width, y); // dibujo un triángulo entre el centro de la pantalla y dos puntos que usan la variable y
  // y creo la ilusión de un triángulo que están "rotando" sobre el eje x
}
