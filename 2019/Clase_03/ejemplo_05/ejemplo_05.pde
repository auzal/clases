int posicion_x; // declaro una variable entera
int posicion_y; //  y otra
int ancho; // y otra


void setup() {
  size(500, 500);
  posicion_x = 0; // guardo 0 en la variable
  posicion_y = 0; // guardo 0 en la variable
  noStroke(); // quito el contorno
  background(0); // pinto el fondo de negro una vez
  ancho = 20; // guardo 20 en la variable
}


void draw() {


  fill(random(255)); // elijo un valor al azar para controlar el valor de gris de relleno de figuras
  rect(posicion_x, posicion_y, ancho, ancho); // dibujo un rectángulo usando las variables posicion_x y posicion_y para controlar la posicion del rectángulo
  // y el contenido de la variable ancho para controlar el tamaño del rectángulo
  posicion_x += ancho; // en cada ciclo de draw(), aumento la posición en el valor que esté guardado en la variable "ancho"
  if (posicion_x > width) { // si el valor de posición_x es mayor que el ancho de la pantalla
    posicion_x = 0; // vuelvo la variable a 0, es decir, vuelvo al inicio de la pantalla
    posicion_y += ancho; // y aumento la variable posicion_y en el valor de ancho, es decir, salto un renglón para abajo
    if (posicion_y > height) { // si el valor de posición_y es mayor que el alto de la pantalla
      posicion_y = 0; // vuelvo la variable a 0, es decir, vuelvo al inicio de la pantalla
    }
  }
}
