PImage carlitos; // declaro una variable del tipo PImage que se llama "carlitos"

void setup() {
  size(800, 800);
  carlitos = loadImage("calavera.png"); // cargo en la variable "carlitos" una imagen que se llama "calavera.png" que está en la carpeta "data"
  carlitos.resize(50, 0); // le cambio el tamaño a carlitos para que mida 50 px de ancho
  imageMode(CENTER); // hago que las imágenes se dibujen desde el centro
  background(0); // pinto el fondo de negro una vez
}


void draw() { // en el draw() no hago nada
}

void mousePressed() { // cuando presiono el mouse
  int distancia_maxima = 100;  // declaro una variable entera de nombre "distancia_maxima" a la que le asigno el valor 100
  int cantidad = int(random(5, 50));  // declaro una variable entera de nombre "cantidad" a la que le asigno una valor al azar entre 5 y 50
  for (int i = 0; i < cantidad; i++ ) {  // este es un ciclo for que se repite "cantidad" veces
    image(carlitos, random(mouseX - distancia_maxima, mouseX + distancia_maxima), random(mouseY - distancia_maxima, mouseY + distancia_maxima)); 
    //dibujo la imagen que hay guardada en "carlitos", en una posición al azar que no varíe en más de 100 px en horizontal o vertical del mouse
  }
  
  // entonces, cada vez que presiono el mouse se dibuja una cantidad al azar de calaveras (entre 5 y 50), en posiciones al azar cerca del puntero del mouse
}