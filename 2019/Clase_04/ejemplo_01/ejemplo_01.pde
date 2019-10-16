PImage pintura;  // declaro una variable del tipo PImage 
float x; // declaro unas variables float (números decimales) que voy a usar para guardar la posición actual
// en la que voy a dibujar la imagen y la posición anterior en que fue dibujada
float y;
float x_previa;
float y_previa;


void setup() {
  size(800, 800);
  pintura = loadImage("pibe2.png"); // uso la función loadImage para cargar una imagen en la variable "pintura"
  // en este caso, es una imagen .png, que tiene transparencia
  background(255); // pinto el fondo de blanco 
  x = 0; // cargo valores en las variables x e y
  y = 0;
  imageMode(CENTER); // uso imageMode(CENTER) para que las imágenes se dibujen desde su centro y no desde su esquina superior izquierda
}


void draw() {
  //uso este truco de en lugar de pintar el fondo dibujar un rectángulo con poca opacidad que ocupe toda la pantalla para que quede una "estela" de lo dbujado anteriormente
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);
  
  
  tint(0); // uso tint para "teñir" las imágenes, en este caso las tiño de negro (0)
  // tint(random(255), random(255), random(255)); // si descomento esta linea, cada vez que dibujo la imagen la tiño previamente de un color al azar
  x_previa = x; // guardo en la variable x_previa el valor actual de x
  y_previa = y; // guardo en la variable y_previa el valor actual de y
  x = random(width); // asigno un nuevo valor al azar a la variable x
  y = random(height); // asigno un nuevo valor al azar a la variable y
  
  // en este momento tengo dos valores nuevos en las variables x e y y los valores anteriores de x e y almacenados en las variables x_previa e y_previa
  
  image(pintura, x, y); // dibujo la imagen "pintura" en la posición x, y
  stroke(0,70); // fijo el color de contorno como negro con 70 de opacidad
  strokeWeight(2); // fijo el ancho de los contornos y líneas como 2
  line(x_previa, y_previa-50, x, y-50); // dibujo una línea entre las posición de la imagen actual y la posición anterior en que fue dibujada
  // le saco 50 pixels a las coordenadas en y para que las líneas pasen por el pecho de la figura de la imagen
}

void keyPressed() { // cada vez que presiono una tecla...
  noLoop(); // noLoop() frena el programa, hace que se deje de ejecutar la función draw()
}

void mousePressed() { // cada vez que presiono un botón del mouse...
  loop(); // loop() hace que la función draw() vuelva a ejecutarse contínuamente
}
