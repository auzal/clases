PImage pintura;  // declaro una variable del tipo PImage de nombre "pintura"

void setup() {
  size(800, 800);
  pintura = loadImage("net.jpg"); // uso la función loadImage() para cargar la imagen "net.jpg" en la variable "pintura"
  // esta imagen tiene que estar guardada en una carpeta de nombre "data" dentro de la carpeta que tenga nuestro código
  // pueden abrir la carpeta del código aprentando control+k o yendo a sketch > mostrar carpeta de sketch
  // recuerden guardar el código antes de guardad imágenes en su carpeta!!!!
  pintura.resize(333, 0); // la función resize cambia el tamaño de la imagen, los dos parámetros que le paso son ancho y alto
  // si uno de los dos parámetros lo paso como 0, processing calcula el valor proporcional para mantener la relación de aspecto de la imagen
  background(255);
}

void draw() {
  // background(255); // si descomento esta línea, pinto el fondo en cada cuadro y solo veo una imágen dibujada
  image(pintura, mouseX, mouseY); // dibujo la imagen "pintura" en la posición actual del mouse
} 
