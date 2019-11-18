Nucleus n;
ArrayList <Cristal> c;

void setup() {
  size(800, 800);
  c = new ArrayList();
  n = new Nucleus(width/2, height/2);
  Cristal aux = new Cristal(n.x, n.y, n, random(TWO_PI));
  c.add(aux);
  background(0);
  frameRate(15);
}



void draw() {
  String s = str(c.size()) + " || " + frameRate;
  surface.setTitle(s);
  // background(0);
 // n.draw();
  for (int i = 0; i < c.size(); i++) {
    c.get(i).render();
  }

  int limit = c.size();
  for (int i = 0; i < limit; i++) {
    if (c.get(i).children < c.get(i).max_children) {
      Cristal aux = new Cristal(c.get(i).x, c.get(i).y, n);
      c.get(i).children ++;
      c.add(aux);
    } else {
      c.get(i).kill = true;
    }
  }

  for (int i = c.size()-1; i >=0; i--) {
    if (c.get(i).kill) {
      c.remove(i);
    }
  }

  if (c.size() > 3000) {
    c.clear();
    n = new Nucleus(random(width), random(height));
    Cristal aux = new Cristal(n.x, n.y, n, random(TWO_PI));
    c.add(aux);
  }
}
