int posicion_x;  // declaro una variable del tipo int (o sea entero) que se va a llamar posicion_x

void setup() {
  size(500, 500);
  posicion_x = 0;  // a posicion_x, le asigno el numero 0, es decir, ahora en posicion_x hay guardado un numero 0
}


void draw() {
  background(0); 
  ellipse(posicion_x, 250, 100, 100);   // dibujo una elipse en x = lo que haya adentro de posicion_x, y= 250, de diametro 100 
  posicion_x = posicion_x + 5; // guardo en posicion x lo que ya habia en posicion_x + 5
  println(posicion_x);  // imprimo en la consola el valor de posicion_x para controlarlo
}