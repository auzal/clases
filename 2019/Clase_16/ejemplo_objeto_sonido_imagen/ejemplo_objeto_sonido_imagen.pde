import processing.sound.*;

Coso objeto;

void setup() {
  size(500, 500);
  PImage avion = loadImage("plane.png");
  SoundFile thump = new SoundFile(this, "thump1.wav");
  objeto = new Coso(thump, avion);

}

void draw() {
  background(0);
  objeto.update();
  objeto.render();
}
