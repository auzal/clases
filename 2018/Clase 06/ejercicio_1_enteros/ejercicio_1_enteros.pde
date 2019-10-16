// este ejemplo hace que una elipse se mueva de a 5 pixels hacia la derecha cada vez que presiono el mouse

int numero; // declaro una variable del tipo entero, de nombre "numero"

void setup() {
  size(200, 200); 
  numero = 0; // la inicializo con el valor "0"
}


void draw() {
  background(255); // pinto el fondo de blanco
  ellipse(numero +    20, 100, 10,10); // dibujo una elipse en la posicion x: lo que haya en la variable "numero" + 20, y: 100
                                       // de 10 px de diametro
  
}

void mousePressed() { // cada vez que presiono el mouse

  numero = numero + 5; // le asigno a "numero" su propio valor + 5, es decir, hago que numero crezca de a 5
 println(numero); // imprimo el nuevo valor de numero a la consola
}