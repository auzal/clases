float x;
float y;

void setup() {
  size(500, 500);
  x = random(width);
  y = random(height);
}


void draw() {
  background(0);
  ellipse(x, y, 100, 100);
}

void mousePressed() {
  x = random(width);
  y = random(height);
}