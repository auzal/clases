// este ejemplo dibuja una figura constantemente en la posición del mouse
// cada vez que presiono una tecla, la figura cambia de circulo a cuadrado y viceversa

// declaro una variable booleana de nombre "dibujar_circulo"
boolean dibujar_circulo; // si es verdadera, dibujo circulos, si es falsa, dibujo rectangulos

void setup() {
  size(500, 500);
  dibujar_circulo = true; // inicializo la variable booleana como "verdadero"
  rectMode(CENTER); // dibujo los rectangulos desde el centro
}

void draw() {
  // recuerden que para comparar un valor con otro uso el operador ==
  if (dibujar_circulo == true) { // si el contenido de la variable "dibujar_circulo" es igual a "verdadero"
    ellipse(mouseX, mouseY, 20, 20); // dibujo una elipse 
  } else { //sino, es decir, si es "falso"
    rect(mouseX, mouseY, 20, 20); // dibujo un rectangulo
  }
}

void keyPressed() { // cada vez que se presiona una tecla
  
  // estos dos pedazos de código hacen exactamente lo mismo, el primero es más fácil de leer, 
  // pero el segundo es más sintético
  
  //if(dibujar_circulo == true){ 
  //  dibujar_circulo = false;
  //}else{
  //  dibujar_circulo = true;
  //}

  dibujar_circulo = !dibujar_circulo; // le asigno a dibujar_circulo su contrario, es decir, 
                                      // si era falso, pasa a ser verdadero
                                      // si era verdadero, pasa a ser falso
                                      // recuerden que el operador "!" es la negación de un valor
 
}