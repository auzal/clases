// este es un ejemplo de carga de imágenes 

PImage carlitos; // para cargar imágenes tengo que usar el tipo de variable PImage
// en este caso, declaro una variable del tipo PImage que se llama "carlitos"

void setup() {

  size(800, 800);
  carlitos = loadImage("img024.jpg"); // cargo la imagen "img024.jpg" en la variable "carlitos", 
  // esa imagen está en la carpeta "data" adentro de la carpeta del sketch
  carlitos.resize(300, 0); // usando la función resize() de una variable PImage puedo cambiar su tamaño
  // en este caso, cambia el tamaño a 300 px de ancho, y su valor proporcional de alto (porque le pasé "0" como argumento para el alto)
  imageMode(CENTER); // al igual que rectMode(CENTER), imageMode(CENTER) hace que las imágenes se dibujen desde el centro
}


void draw() {
  // uso la función image() para dibujar una imagen en la pantalla
  // lleva tres argumentos, la imagen que quiero dibujar (en este caso, la que está en la variable "carlitos")
  // y la posición, en este caso, la del mouse
  image(carlitos, mouseX, mouseY); // dibujo la imagen 
}