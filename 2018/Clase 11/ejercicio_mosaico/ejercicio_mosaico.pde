PImage img;

void setup() {
  size(600, 600);
  img = loadImage("imagen.png");
  img.resize(40, 0);
}


void draw() {
  background(255);
  for (int x = 0; x < width; x += img.width) {
    for (int y = 0; y < height; y += img.height) {
      image(img, x, y );
    }
  }
}