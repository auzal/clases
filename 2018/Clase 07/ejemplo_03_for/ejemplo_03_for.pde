// ejemplo de estructura de control "for"

void setup() {
  size(500, 500);
  background(255);
}


void draw() {
  //en el draw no hago nada
}


void mousePressed() {// cada vez que presiono el mouse
// ingreso en un ciclo for
// recuerden que esto se lee así 
// inicialización: declaro una variable i cuyo valor es 0   
// evaluación o prueba : pregunto si la variable i es menor que 500, si es menor, hago lo que está entre llaves, sino, salgo del ciclo for
// actualización: le sumo 1 a i
// es decir, este es un ciclo for que hace algo (en este caso, dibujar una elipse) 500 veces
  for ( int i = 0; i < 500; i ++ ) { 
    ellipse(random(width), random(height), 20, 20); // dibujo una elipse de 20 px de diametro en algún lugar al azar de la pantalla
  }
  
 // entonces, cada vez que presiono el mouse, se dibujan 500 elipses en lugares arbitratrios de la pantalla 
}