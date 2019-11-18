import processing.sound.*;

SoundFile archivo_sonido;



void setup() {
  size(500, 500);
  archivo_sonido = new SoundFile(this, "pista.wav");
  archivo_sonido.loop();
  noStroke();
}


void draw() {
  for (int i = 0; i < width; i +=5) {
    for (int j = 0; j < height; j +=5) {
      fill(map(noise((i+frameCount)*0.01, j*0.01), 0, 1, 0, 255));
      rect(i, j, 5, 5);
    }
  }
  color c = get(mouseX, mouseY);
  float brillo = brightness(c);
  float volumen = map(brillo, 0, 255, 0, 1);
  archivo_sonido.amp(volumen);
}


void mouseMoved() {
}
