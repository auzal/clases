void setup() {
  size(400, 400);
  rectMode(CENTER);
}


void draw() {
  
}


void mousePressed() {

  fill(map(mouseY, 0, height, 0, 255));
  
  float ancho = map(mouseX, 0, width, 60 , 5);

  if (mouseX < width/2) {
    rect(mouseX, mouseY,  ancho, ancho);
  } else {
    ellipse(mouseX, mouseY, ancho, ancho);
  }
}