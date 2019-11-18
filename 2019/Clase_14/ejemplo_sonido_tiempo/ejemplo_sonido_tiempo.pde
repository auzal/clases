import processing.sound.*;

SoundFile archivo_sonido;


void setup() {
  size(400, 200);
  archivo_sonido = new SoundFile(this, "pista.wav");
  archivo_sonido.loop();
  noStroke();
}


void draw() {
  background(0);
 
}


void mouseMoved() {
  float time = map(mouseX,0,width,0,archivo_sonido.duration());
  archivo_sonido.jump(time);
}
