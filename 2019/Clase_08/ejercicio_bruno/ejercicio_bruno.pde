void setup() {
  size(800, 800);
}



void draw() {
  background(255);
  //float largocuad;
   dibujarFigura(mouseX,mouseY,200,50);
  fill(255);
}

void dibujarFigura(float x, float y, float ancho, float alto){
  rect(x, y, ancho, alto);
  triangle(x, y+alto, x+ancho, y+alto, x+ancho/2, y);
}
