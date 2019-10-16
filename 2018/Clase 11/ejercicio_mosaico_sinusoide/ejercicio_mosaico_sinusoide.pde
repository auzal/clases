PImage img;

void setup() {
//  size(600, 600);
fullScreen();
  img = loadImage("imagen.png");
  img.resize(40, 0);
}


void draw() {
  background(255);

  for (int x = 0; x < width; x += img.width) {
    for (int y = 0; y < height; y += img.height) {
      float val = dist(x, y, mouseX, mouseY);
      val = radians(val);
      float offset = sin(val + frameCount * 0.05 ) * 10;
      image(img, x, y + offset);
    }
  }
}