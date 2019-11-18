class Coso {
  float x;
  float px;
  float py;
  float y;
  float dir;
  float vel;

  Coso() {
    reset();
    dir = random(TWO_PI);
    vel = random(3, 5);
   
  }

  void render() {
    stroke(255, 255, 0, 20);
    line(px, py, x, y);
  }

  void actualizar() {
    px = x;
    py = y;
    x+= cos(dir) * vel;
    y+= sin(dir) * vel;

    if (x>width)
      reset();
    else if (x<0)
      reset();
    if (y>height)
      reset();
    else if (y<0)
      reset();

    color c = img.get(int(x), int(y));

    float bri = brightness(c);

    dir = map(bri, 0, 255, 0, TWO_PI);
  }

  void reset() {
    x = random(width);
    y = random(height);
    px = x;
    py = y;
  }
}
