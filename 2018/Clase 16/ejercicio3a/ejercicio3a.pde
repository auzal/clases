void setup() {
  size(700, 700);
  noStroke();
}


void draw() {
  background(0);
  int lado = 50;
  pushMatrix();
  translate(50,200);
  triangle(-lado,lado/2,lado,lado/2,0,-lado);
  popMatrix();
  
  pushMatrix();
  translate(500,300);
  triangle(-lado,lado/2,lado,lado/2,0,-lado);
  popMatrix();
  
   pushMatrix();
  translate(50,300);
  triangle(-lado,lado/2,lado,lado/2,0,-lado);
  popMatrix();
  
   pushMatrix();
  translate(550,500);
  triangle(-lado,lado/2,lado,lado/2,0,-lado);
  popMatrix();
  
   pushMatrix();
  translate(90,450);
  triangle(-lado,lado/2,lado,lado/2,0,-lado);
  popMatrix();
}