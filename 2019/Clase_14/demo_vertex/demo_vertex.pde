PImage img;
int x[];
int y[];

void setup() {
  size(1280, 720, P2D);
  img = loadImage("img2.jpg");
  x = new int[0];
  y = new int[0];
  textureMode(IMAGE);
}


void draw() {
  //image(img, 0, 0);
  background(0);
  beginShape();
  texture(img);
  for(int i = 0 ; i < x.length ; i++){
    vertex(x[i], y[i], x[i], y[i]);
  
  }
  endShape(CLOSE);
}

void mousePressed() {
  x = splice(x, mouseX, 0);
  y = splice(y, mouseY, 0);
}
