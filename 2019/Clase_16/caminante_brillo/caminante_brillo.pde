PImage img;
Coso c;

Coso [] cosos;

void setup() {
  size(550, 550);


  img = loadImage("voronoi.png");
  c = new Coso();
  img.resize(width, height);
  background(0);
  tint(255, 50);
 // image(img, 0, 0);

  cosos = new Coso[200];
  for (int i = 0; i < cosos.length; i++) {
    cosos[i] = new Coso();
  }
}


void draw() {


  for (int i = 0; i < cosos.length; i++) {
    cosos[i].actualizar();
    cosos[i].render();
  }
}

void keyPressed() {
  
  for (int i = 0; i < cosos.length; i++) {
    cosos[i].reset();

  }
}
