PImage img;

void setup() {
  size(450, 450);
  img = loadImage("imagen.jpeg");
}

void draw() {
  background(255);
  image(img, 0, 0);
  tint(255, 0, 0);
  image(img, 225, 0);
  tint(255, 255, 0);
  image(img, 0, 225);
  tint(255, 128, 0);
  image(img, 225, 225);
  noTint();
}