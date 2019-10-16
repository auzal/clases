int pos_x;

void setup() {
  size(400, 400);
  pos_x = 20;
}


void draw() {
  background(255, 0, 255);
  ellipse(pos_x, 200, 50, 50);

  // pos_x = pos_x + 2;
  pos_x += 2; // esto es igual a la línea de arriba
  //pos_x ++; // esto significa incrementar en uno
}