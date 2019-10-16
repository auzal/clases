void setup(){
  size(500,500); 
  background(2, 155, 146); // pinto el fondo de turquesa una vez
}


void draw(){
  fill(255,128,0,40);
  noStroke();
  ellipse(random(width), random(0,height), 30, 30); // en cada cuadro de draw(),  dibujo una elipse en alguna posición al azar de la pantalla, de 30 pixels de diametro
  // como no estoy volviendo a pintar el fondo, las elipses se acumulan
 
}

void keyPressed(){ // cuando presiono cualquier tecla del teclado ...
  saveFrame("dibujo.jpg"); // uso saveFrame() para guardar cuadro actual de dibujo
  // si no le paso parámetros, guarda como .tiff
  // la imagen queda guardada en la carpeta en la que esta guardado el archivo .pde
  // puedo acceder a esta carpeta yendo a "sketch" -> mostrar carpeta de sketch
}
