PImage imagen; // declaro una variable del tipo PImage de nombre imagen
PImage imagen2; // declaro una variable del tipo PImage de nombre imagen2

void setup() {
  size(800, 800);
  imagen = loadImage("img.jpg"); // cargo una imagen en mi variable "imagen"
  imagen2 = loadImage("img2.jpg");// cargo una imagen en mi variable "imagen2"
}


void draw() {
  // no hago nada en el draw
}

void mousePressed() {
  float num = random(2); // declaro una variable flotante, 
  //de nombre "num", a la que le asigno un número al azar entre 0 y 2
  println(num); // imprimo el número "num" a la consola

  if (num < 1) { // si el número al azar que elegí es menor a 1
    image(imagen, mouseX, mouseY); // dibujo la imagen "imagen"
  } else { // sino
    image(imagen2, mouseX, mouseY); // dibujo la imagen "imagen2"
  }
}