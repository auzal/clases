PImage img;
int x;

void setup() {
  size(500, 500);
  img = loadImage("imagen.jpg");
  x = width + img.width/2;
  imageMode(CENTER);
}

void draw() {
  background(255);
  image(img, x, height/2);
  if (x > -img.width/2) {
    x -= 5;
  } else {
    x = width + img.width/2;
  }
}