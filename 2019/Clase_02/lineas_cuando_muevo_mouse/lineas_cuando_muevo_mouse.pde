void setup() {
  size(800, 800);
  background(255); //  pinto el fondo de blanco una sola vez
}

void draw() {
  stroke(0, 10); // fijo el color de contorno en negro con 10 de opacidad
  line(random(width), random(height), random(width), random(height)); // dibujo una linea entre dos puntos al azar en la pantalla
  // como pinté el fondo una sola vez en el setup(), las lineas se van acumulando
}

void keyPressed(){ // la función keyPressed() se ejecuta cada vez que presiono una tecla del teclado (cualquier tecla)
 // entonces, cada vez que presiono una tecla
  background(255); // pinto el fondo de blanco
  // es decir, borro lo que ya había dibujado
}

void mouseMoved(){ // la función mouseMoved() se ejecuta cada vez que muevo el mouse
 // entonces, cada vez que muevo el mouse
  stroke(0, 128); // fijo el color de contorno como negro con 128 de opacidad
  line(random(mouseX-20, mouseX+20), random(mouseY-20, mouseY+20), random(mouseX-20, mouseX+20), random(mouseY-20, mouseY+20));
  // y dibujo una linea en una posición al azar alrededor de la posición del mouse (cuyas coordenadas no pueden moverse mas de 20 pixels en cualquier sentido de la posición del mouse)
}
