PFont fuente;

void setup() {

  size(700, 700);
  fuente = loadFont("SFProText-Heavy-255.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textSize(width*1.9);
  background(0);
}


void draw() {
  background(0);
  fill(0,10);
  rect(0,0,width,height);
  fill(255,255 * abs(sin(radians(frameCount*2))),255* abs(sin(radians(frameCount*2))),50);
  translate(width/2, height/2 );
  rotate(radians(frameCount));
  text(key, 0,0);
}

void keyPressed(){

}