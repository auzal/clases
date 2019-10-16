boolean apuntar = false;

void setup() {
  size(700, 700);
  frameRate(30);
}


void draw() {
  background(0);
  int lado = 50;
  pushMatrix();
  translate(50, 200);
  if (apuntar)
    rotate(atan2(mouseY-200, mouseX-50) + HALF_PI);
  else
    rotate(radians(frameCount));
  triangle(-lado/2, lado/2, lado/2, lado/2, 0, -lado);
  popMatrix();

  pushMatrix();
  translate(500, 300);
  if (apuntar)
    rotate(atan2(mouseY-300, mouseX-500) + HALF_PI);
  else
    rotate(radians(frameCount));
  triangle(-lado/2, lado/2, lado/2, lado/2, 0, -lado);  
  popMatrix();

  pushMatrix();
  translate(50, 300);
  if (apuntar)
    rotate(atan2(mouseY-300, mouseX-50) + HALF_PI);
  else
    rotate(radians(frameCount));
  triangle(-lado/2, lado/2, lado/2, lado/2, 0, -lado);
  popMatrix();

  pushMatrix();
  translate(550, 500);
  if (apuntar)
    rotate(atan2(mouseY-550, mouseX-500) + HALF_PI);
  else
    rotate(radians(frameCount));
  triangle(-lado/2, lado/2, lado/2, lado/2, 0, -lado);  
  popMatrix();

  pushMatrix();
  translate(90, 450);
  if (apuntar)
    rotate(atan2(mouseY-450, mouseX-90) + HALF_PI);
  else
    rotate(radians(frameCount));
  triangle(-lado/2, lado/2, lado/2, lado/2, 0, -lado);  
  popMatrix();

  if (pmouseX != mouseX && pmouseY != mouseY) {
    apuntar = true;
  } else {
    apuntar = false;
  }
}