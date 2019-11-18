float angulo;
float radio;
PImage pez;
float x;
float y;

void setup() {

  size(800, 800);
  radio = 200; // esta variable la uso para saber el radio del arco que va a describir el movimiento
  angulo = 0; //  en esta guardo el angulo en el que se encuentra el pez
  pez = loadImage("pex.png");
  pez.resize(150, 0);
  imageMode(CENTER); //  voy a dibujar el pez desde el centro;
  x = width/2; // en x e y guardo la posición del centro del movimiento, no del pez en si
  y = height/2;
}


void draw() {
  background(0);
  angulo -= 1; // en cada cuadro le resto un grado a la rotación del pez, cambiando este valor cambio la velocidad de la rotacion
  if(angulo < -180){ // si llegué al final del semicírculo
    angulo = 0; // vuelvo al principio 
  }

  if (keyPressed) {
    noFill();
    stroke(255);
    ellipse(x, y, radio*2, radio*2);
    line(x-radio,y,x+radio,y);
  }

  pushMatrix();
  translate(x, y);
  rotate(radians(angulo));
  translate(radio, 0);
  rotate(radians(90));
  image(pez, 0, 0);
  popMatrix();
}
