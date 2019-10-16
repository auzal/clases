int medida;

void setup() {
  size(800, 800);
  medida = 30;
  noFill();
}

void draw() {

  if ( mouseX > width/2 ) {
    ellipse(mouseX, mouseY, 40, 40);
  }else {
    triangle(mouseX-medida, mouseY+medida, mouseX, mouseY-medida, mouseX+medida, mouseY+medida);
  }
}
