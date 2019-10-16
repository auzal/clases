PImage jose;

void setup() {
  size(600, 600);
  jose = loadImage("imagen.png");
  jose.resize(100, 0);
  imageMode(CENTER);
  noStroke();
}


void draw() {
  // background(255);
  fill(255, 5);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  rotate(radians(-frameCount));
  //tint(255, 20);
  image(jose, 200, 0);
}