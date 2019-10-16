void setup() { // todo lo que está entre estas llaves, sucede una sola vez
  size(500, 500);
  // la funcion size determina el tamaño de la ventana
  
  // la doble barra sirve para escribir comentarios de un renglón
  /*esto sirve para escribir 
  comentarios mas largos*/
}


void draw() { // todo lo que está entre estas llaves, sucede aprox. 60 veces por segundo
  rect(250,250,50,50); // los dos primeros numeros son la posicion de su esquina sup. izquierda, los dos segundos su ancho y su alto 
  ellipse(250, 250, 50, 50); // los dos primeros numeros son la posicion de su centro, los dos segundos, su ancho y su alto 
}