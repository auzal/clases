PImage jose;

void setup() {
  size(600, 600);
  jose = loadImage("imagen.png");
  jose.resize(250, 0);
  imageMode(CENTER);
}


void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(radians(-frameCount));
   //tint(255,20);
  image(jose, 0, 0);
}