PFont fuente;
int ang;
boolean sentido;
boolean animando;

void setup() {
  size(600, 600);
  fuente = loadFont("oaklandhills1991-90.vlw");
  textFont(fuente);
  ang = 0;
  textAlign(CENTER, CENTER);
  sentido = true;
  animando = false;
}

void draw() {

  if (animando == true) {
    if (sentido == true) {
      if(ang < 180 ){
        ang ++;
      }else{
        animando = false;
        sentido = false;
      }
    } else {
      if(ang > 0 ){
        ang --;
      }else{
        animando = false;
        sentido = true;
      }
    }
  }

  background(0);
  translate(width/2, height/2);
  rotate(radians(ang));
  text("ejercicio", 0, 0);
}

void keyPressed() {
  animando = true;
}