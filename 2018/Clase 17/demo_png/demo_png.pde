PImage img;
PImage fondo;

void setup() {
  size(800, 800);
  img = loadImage("particula.png");
  fondo = loadImage("14 copy.jpg");
  fondo.resize(800, 0);
  background(200);
  //image(fondo,0,0);
  imageMode(CENTER);
}


void draw() {
  for (int i = 0; i < 20; i ++) {
    int x = int(random(width));
    int y = int(random(height));
    color c = fondo.get(x, y);
    int diam = int(map(mouseX, 0, width, 5, 200));
    tint(c,50);
    image(img, x, y, diam, diam);
    noTint();
  }
}