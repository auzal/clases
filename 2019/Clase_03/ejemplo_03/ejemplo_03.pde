float diametro; // declaro una variable del tipo float (para números decimales) que voy a llamar "diametro"
// recuerden que las variables del tipo "float" se utilizan para guardar números decimales

void setup() {
  size(500, 500);
  diametro = 0; //  guardo el valor 0 en la varible diametro
}


void draw() {
  background(0); // pinto el fondo de negro 
  fill(255);  // fijo el color de relleno como blanco
  noStroke(); //  le quito el trazo a lo que vaya dibujar
  diametro = random(300); // le asigno un valor al azar entre 0 y 300 a la variable diametro
  ellipse(width/2, height/2, diametro, diametro); // dibujo un circulo en el centro de la pantalla, cuyo diametro es el valor numerico que hay en la variable "diametro"
  
  // como en cada cuadro de dibujo le asigno un valor al azar a "diametro", dibujo circulos de distinto diametro 60 veces por segundo
}
