class Asteroide {
  float x;
  float y;
  float dir;
  float ang;
  float vel;
  PImage img;

  Asteroide(PImage img_) {
    x = mouseX;
    y = mouseY;
    dir = random(TWO_PI);
    ang = random(TWO_PI);
    vel = random(5, 10);
    img  = img_;
  }


  void dibujar() {
    pushStyle();
    pushMatrix();
    imageMode(CENTER);
    translate(x, y);
    rotate(ang);
    image(img, 0, 0);
    popMatrix();
    popStyle();
  }

  void volar() {
    x += cos(dir) * vel;
    y += sin(dir) * vel;

    if (x > width)
      x = 0;
    else if (x < 0)
      x = width;

    if (y > height)
      y = 0;
    else if (y < 0)
      y = height;


    ang += radians(5);
  }
}
