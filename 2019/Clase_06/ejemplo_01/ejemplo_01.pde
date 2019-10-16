float diam;

float rojo;

float verde;

void setup() {
  size(600, 600);
  noStroke();
  diam = 0;
  rojo = 0;
  verde = 0;
  background(0);
}


void draw() {
 // background(0);
  rojo = map(mouseX, 0, width, 0, 255);
  verde = map(mouseX, 0, width, 255, 0);
  diam = map(mouseX, 0, width, 45, 234);
  fill(rojo, verde, 0);
  ellipse(mouseX,mouseY, diam, diam);
}
