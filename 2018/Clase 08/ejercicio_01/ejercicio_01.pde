PImage img;

void setup() {
  size(550, 550);
  img = loadImage("imagen.png");
}


void draw() {
  background(255);
  image(img, 0, 0, 300, 300);
  image(img, 300, 300, 150, 150);
  image(img, 450, 450, 75, 75);
}