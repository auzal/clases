PFont fuente;

void setup() {

  size(700, 700, P3D);
  fuente = createFont("SanFranciscoText-Heavy.otf",550);
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textMode(SHAPE) ;
  background(0);
}


void draw() {
  //background(0);
  fill(0,5);
  rect(0,0,width,height);
  fill(255,255 * abs(sin(radians(frameCount*2))),255* abs(sin(radians(frameCount))),50);
  translate(width/2, height/2 );
  rotate(radians(frameCount));
  text(key, 0,0);
}

void keyPressed(){

}