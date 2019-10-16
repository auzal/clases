// esta es una variante de un sketch que ya habíamos hecho

int x; // declaro una variable entera para guardar la posición en x de una elipse

void setup() {
  size(500, 500);
  x = 0; //  la inicializo como 0
}

void draw() {
  background(255); // pinto el fondo de blanco 
  ellipse(x, height/2, 50, 50); // dibujo una elipse en la posición x,height/2  de 50 px de diametro

  if (x < width) {  // si el contenido de la variable x es menor que el ancho de la pantalla
    x = x + 4; // le sumo 4 al valor que había en x, es decir, hago que la elipse se mueva 4 pixels a la derecha
  } else { // sino, es decir, si la elipse ya se fue de la pantalla
    x = 0; //  hago que x vuelva a valer 0
    println("VUELVO A CERO"); // e imprimo en la consola "VUELVO A CERO"
  }
  
  
}