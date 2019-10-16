int columnas;
int filas;
int columna_seleccionada;
int fila_seleccionada;
float x;
float y;
float x_anterior;
float y_anterior;
float ancho_columna;
float alto_fila;


void setup() {
  background(0);
  stroke(255);
  noFill();
  size(500, 500);
  columnas = 5;
  filas = 5;
  ancho_columna = width/columnas;
  alto_fila = width/columnas;
  columna_seleccionada = int(random(columnas+1));
  fila_seleccionada = int(random(filas+1));
  x = columna_seleccionada * ancho_columna;
  y =  fila_seleccionada * alto_fila;
  ellipse(x, y, 10, 10);
}

void draw() {

  stroke(255,frameCount%255, frameCount%255, 20);
  x_anterior = x;
  y_anterior = y;
  columna_seleccionada = int(random(columnas+1));
  fila_seleccionada = int(random(filas+1));
  x = columna_seleccionada * ancho_columna;
  y =  fila_seleccionada * alto_fila;
  line(x, y, x_anterior, y_anterior);
  ellipse(x, y, 10, 10);
}

void keyPressed() {
  
}
