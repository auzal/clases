int posicion_en_x; // creo una variable del tipo entero (int) a la que voy a "llamar posicion_en_x"
int posicion_en_y; // creo una variable del tipo entero (int) a la que voy a "llamar posicion_en_y"
// recuerden que las variables del tipo int sirven para guardar números enteros

int rojo; // creo una variable del tipo entero (int)  a que voy a llamar "rojo"

// IMPORTANTE: los nombres de variables no pueden empezar con números, ni contener espacios ni caracteres especiales

void setup() {
  size(500, 500);
  posicion_en_x = 200;  // guardo el valor 200 en la variable posicion_en_x
  posicion_en_y = 250;  // guardo el valor 250 en la variable posicion_en_x
  rojo = 0; // guardo el valor 0 en la variable rojo
  
  //IMPORTANTE: para asignar valores utilizo el operador = 
}


void draw() {
  background(255 - rojo, 0 , 0); // utilizo el valor de la variable rojo para controlar el fondo
  fill(rojo, 0, 0); // y el color de relleno
  rect(posicion_en_x, posicion_en_y, 50, 50); // dibujo un rectangulo en las posicion que corresponde a los valores guardados en las variables de posicion, de lado 50
  
  posicion_en_x = posicion_en_x + 1; // aumento posicion en x en 1
  posicion_en_y = posicion_en_y - 1; // decremento posicion en 1 en 1
  
  rojo += 2; // aumento rojo en dos

  //  posicion_en_x += 1; // estas son sintaxis alternativas que me permiten incrementar una variable en un valor
  //  posicion_en_x ++; // esta me permite incrementar el valor de una variable de a uno
  
  // como constantemente modifico los valores de las variables de posición y color, creo la sensación de movimiento
}
