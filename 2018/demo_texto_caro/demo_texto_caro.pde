PFont f;

PImage img;

void setup() {
  size(800, 800);
  f = loadFont("DIN-Black-30.vlw");
  textFont(f,15);

  background(0);
  fill(255);
  img = loadImage("net.jpg");
  img.resize(0, height);
}


void draw() {
fill(0,20);
surface.setTitle(str(frameRate));
rect(0,0,width,height);
  int inc = int(map(sin(frameCount * 0.05),-1,1,10,30));
  for (int i = 0; i < width; i += inc) {
    for (int j = 0; j < height; j+= inc) {
      fill(img.get(i, j));
      char c = char(int(random(65, 97)));
      text(c, i, j);
    }
  }
}