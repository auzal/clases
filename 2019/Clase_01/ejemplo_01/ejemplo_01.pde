void setup() { // la función setup() se ejecuta una vez, cuando apretamos el botón de play. todo lo que está dentro de las llaves {} sucede una sola vez
  size(500, 500); // la función size() determina el tamaño del lienzo, toma como parámetros un ancho y un alto en pixels
  background(100, 0, 0); // la función background() cambia el color de fondo del lienzo y toma tres parámetros: un valor de rojo, uno de verde, y uno de azul (de 0 a 255)
} 


void draw() { // la función draw() se ejecuta contínuamente (aprox. 60 veces por segundo) una vez que se ejecutó la función setup()
  background(100, 0, 0);  // la función background() controla el color de fondo, el orden de los colores es Rojo Verde y Azul 
  // si quitamos este llamado a la función background(), veríamos la estela de figuras dibujadas en cuadros anteriores
  stroke(255, 255, 0); // la función stroke() controla el color del contorno de las figuras que dibujemos (también tres parámetros, rojo verde y azul)
  strokeWeight(5); //  la función strokeweight() controla el ancho de trazo para dibujar, en este caso 5 pixels
  fill(0, 50, 100, 80); // la función fill() controla el color de relleno de las figuras, el cuarto parámetro (80 en este caso) es un valor de transparencia (también de 0 a 255)
  rect(mouseX, mouseY, 100, 100); // la función rect() dibuja rectángulos. Toma como parámetros una posición en x, una posición en y, un ancho y un alto
  // los rectángulos se dibujan por defecto desde su esquina superior izquierda
  ellipse(mouseX, mouseY, 100, 100); // la función ellipse() dibuja elipses. Toma como parámetros una posición en x, una posición en y, un ancho y un alto
  // las elipses se dibujan por defecto desde su centro
  // las variables mouseX y mouseY guardan siempre la posición del mouse
}
