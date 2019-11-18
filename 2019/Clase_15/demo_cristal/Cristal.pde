class Cristal {

  float x;
  float y;
  Nucleus parent;
  float angle;
  int children;
  int max_children = int(random(1, 3));
  boolean kill = false;

  Cristal(float x_, float y_, Nucleus parent_) {
    parent = parent_;
    children = 0;
    angle = atan2(y_- parent.y, x_ - parent_.x) +radians(random(-45, 45));
    float l = random(10, 25);
    x = x_ + cos(angle) * l;
    y = y_ + sin(angle) * l;
  }

  Cristal(float x_, float y_, Nucleus parent_, float angle_) {
    parent = parent_;
    angle = angle_;
    float l = random(3,10);
    x = x_ + cos(angle) * l;
    y = y_ + sin(angle) * l;
  }


  void render() {
    pushStyle();
    pushMatrix();
    translate(x, y);
    rotate(angle);
    fill(random(255), random(255), random(255), 200);
    noStroke();
    beginShape();
    vertex(0, 0);
    vertex(10, -5);
    vertex(25, 0);
    vertex(10, 5);
    endShape();
    popMatrix();
    popStyle();
  }
}
