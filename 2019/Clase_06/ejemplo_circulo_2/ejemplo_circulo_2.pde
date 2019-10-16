PImage img;

void setup() {
  //pixelDensity(displayDensity());

  size(800, 800);
  background(0);

  img = createImage(width, height, RGB);
}


void draw() {
  pushMatrix();
  background(0);

  stroke(255);
  //randomSeed(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(1));
  translate(-width/2, -height/2);
  image(img, 0, 0);
  popMatrix();

  for (int i = 0; i < 50; i ++) {
    float x = random(width);
    float y = random(height);
    if (dist(x, y, width/2, height/2) < 300) {
      line(x, y, random(x-5, x+5), random(y-5, y+5));
    }
  }

  popMatrix();
  img = get( 0, 0, width, height );
  //img.save("test");
}
