PImage img;
void setup() {
  size(700, 700);
  img = loadImage("img.jpg");
  img.resize(0,height);
  noStroke();
}


void draw() {
  float amt =  map(mouseX, 0, width, 1, 50);
  for (int i = 0; i < amt; i++) {
    pushMatrix();
    int x = int(random(width));
    int y = int(random(height));
    translate(x,y);
    if(random(100) < 50)
      rotate(PI);
    float lado = map(mouseY, height, 0, 5, 50);
    fill(img.get(x,y));
    triangle(-lado, 0, lado, 0, 0, -lado*1.5);
    popMatrix();
  }
}