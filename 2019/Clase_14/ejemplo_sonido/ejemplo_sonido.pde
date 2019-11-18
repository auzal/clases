import processing.sound.*;

SoundFile archivo_sonido;


void setup() {
  size(400, 200);
  archivo_sonido = new SoundFile(this, "pista.wav");
  archivo_sonido.loop();
  noStroke();
}


void draw() {
 
}


void mouseMoved() {

}
