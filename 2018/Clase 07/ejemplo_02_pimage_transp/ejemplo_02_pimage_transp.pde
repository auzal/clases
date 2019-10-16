// la única diferencia entre este ejemplo y el anterior es que en este caso cargo una imagen del tipo "png". 
// las imágenes png tienen canal de transparencia
// esta imágen es una foto en png de una calavera recortada, entonces parece que no tuviese fondo

PImage carlitos;

void setup() {

  size(800, 800);

  carlitos = loadImage("calavera2.png");
  carlitos.resize(200, 0);
  imageMode(CENTER);
}


void draw() {
  background(0); //  pinto el fondo de negro en cada cuadro de draw

  image(carlitos, mouseX, mouseY); // dibujo la imagen que está adentro de la variable "carlitos", en la posición del mouse
}