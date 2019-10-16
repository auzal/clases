PImage [] ojos; // declaro un arreglo de imágenes de nombre "ojos"
PImage [] narices; // declaro un arreglo de imágenes de nombre "narices"
PImage [] bocas; // declaro un arreglo de imágenes de nombre "bocas"

int cantidad_de_personas; // declaro una variable del tipo entero de nombre "cantidad_de_personas"

void setup() {
  size(800, 800); 

  cantidad_de_personas = 9; // guardo el valor "9" en cantidad de personas

  ojos = new PImage[cantidad_de_personas]; // inicializo cada arreglo como un nuevo arreglo de 9 (cantidad_de personas) imágenes 
  narices = new PImage[cantidad_de_personas];
  bocas = new PImage[cantidad_de_personas];

  for (int i = 0; i < cantidad_de_personas; i++) { // este for sucede la misma cantidad de veces que el número guardado en cantidad_de_personas, o sea, 9 veces
    ojos[i] = loadImage("ojos/" + (i+1) + ".jpg");  // cargo las imágenes en cada posición de cada arreglo
    narices[i] = loadImage("narices/" + (i+1) + ".jpg"); // las imágenes están en carpetas separadas de la carpeta "data"
    bocas[i] = loadImage("bocas/" + (i+1) + ".jpg");
  }

  imageMode(CENTER); // dibujo las imágenes desde el centro, no desde la esquina sup. izq.

}


void draw() {
  // no hago nada en el draw()
}

void mousePressed() {// cada vez que presiono el mouse...
  image(ojos[int(random(cantidad_de_personas))], width/2, ojos[0].height/2); // dibujo un par de ojos al azar
  image(narices[int(random(cantidad_de_personas))], width/2, ojos[0].height + narices[0].height/2); // dibujo una nariz al azar
  image(bocas[int(random(cantidad_de_personas))], width/2, ojos[0].height+ narices[0].height+ bocas[0].height/2); // dibujo una boca al azar
 
  // cada imagen está dibujada en en una posición relativa al alto de las imágenes anteriores
}