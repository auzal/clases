ArrayList <Asteroide> peters;
PImage peter;
void setup() {
  size(800, 800);
  peter = loadImage("peter.png");
  peters = new ArrayList();
}


void draw() {
  background(0);

  for (int i = 0; i < peters.size(); i++) {
    peters.get(i).dibujar();
    peters.get(i).volar();
  }
}


void mousePressed() {
  Asteroide aux = new Asteroide(peter);
  peters.add(aux);
}

void keyPressed() {

  if (key == ' ') {
    if (peters.size() > 0)
      peters.remove(0);
  } else {
    peters.clear();
  }
}
