import processing.sound.*;

SoundFile archivo_sonido;

PImage img;

void setup() {
  size(400, 500);
  archivo_sonido = new SoundFile(this, "pista.wav");
  archivo_sonido.loop();
  img = loadImage("ernest.jpg");
  img.resize(0, height);
  noStroke();
}


void draw() {
  color c = get(mouseX, mouseY);
  float brillo = brightness(c);
  float volumen = map(brillo, 0, 255, 0, 1);
  archivo_sonido.amp(volumen);
  image(img, 0, 0);
}


void mouseMoved() {

  //println(map(mouseX,0,width,0.5,2.5));
}
