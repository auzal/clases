PFont fuente;
int ang;

void setup() {
  size(600, 600);
  fuente = loadFont("oaklandhills1991-90.vlw");
  textFont(fuente);
  ang = 0;
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians(ang));
  text("ejercicio", 0, 0);
}

void keyPressed() {
  if(ang == 0){
    ang = 180;
  }else{
    ang = 0;
  }
}