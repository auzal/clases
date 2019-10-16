int lado = 200;
boolean bandera = true;

void setup() {

  size(500, 500);
}

void draw() {
  
  float ancho = map(mouseY,0,height,0,100);
  
  strokeWeight(ancho);
  background(0);
  if (bandera) {
    stroke(255, 128, 0);
    fill(0, 255, 255);
  } else {
    stroke(0,255,255);
    fill(255, 128, 0);
  }
  rect(0, 0, lado, lado);
  rect(width-lado, 0, lado, lado);
  rect(width-lado, height-lado, lado, lado);
  rect(0, height-lado, lado, lado);
}

void mousePressed() {
  bandera = !bandera;
}