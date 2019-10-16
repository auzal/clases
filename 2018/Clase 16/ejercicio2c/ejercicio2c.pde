PFont fuente;

void setup() {

  size(700, 700, P3D);
  fuente = createFont("SanFranciscoText-Heavy.otf",400);
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textMode(SHAPE) ;
  background(0);
}


void draw() {
  background(0);
  
  fill(255);
  translate(width/2, height/2 );
  rotate(radians(frameCount));
  text(key, 0,0);
}

void keyPressed(){

}