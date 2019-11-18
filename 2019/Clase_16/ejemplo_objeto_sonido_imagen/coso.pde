class Coso {

  float x;
  float y;
  float dir;
  float vel;

  SoundFile sonido;
  PImage img;

  Coso(SoundFile sonido_, PImage img_) {
    sonido = sonido_;
    img = img_;
    img.resize(50, 0);
    reset();
  }

  void render() {
    pushMatrix();
    pushStyle();
    imageMode(CENTER);
    translate(x, y);
    rotate(dir);
    image(img, 0, 0);
    popMatrix();
  }

  void update() {
    x+= cos(dir) * vel;
    y+= sin(dir) * vel;
    if (x>width || x < 0 || y > height || y < 0) {
      sonido.play();
      reset();
    }
  }

  void reset() {
    x = random(width/2);
    y = random(height/2);
    dir = random(TWO_PI);
    vel  = random(2, 5);
  }
}
