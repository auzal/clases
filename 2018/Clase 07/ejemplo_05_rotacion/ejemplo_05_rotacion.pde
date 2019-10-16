PImage carlitos;

void setup() {

  size(800, 800);
  carlitos = loadImage("calavera.png");
  carlitos.resize(50, 0);
  imageMode(CENTER);
  background(0);
}


void draw() {
}

void mousePressed() {
  int distancia_maxima = 100; 
  int cantidad = int(random(5,50));
  for (int i = 0 ; i < cantidad ; i++ ) {
    float x = random(mouseX - distancia_maxima, mouseX + distancia_maxima);
    float y = random(mouseY - distancia_maxima, mouseY + distancia_maxima);
    float ang = random(TWO_PI);
    pushMatrix();
      translate(x,y);
      rotate(ang);
      image(carlitos,0 ,0 );
    popMatrix();
    
  }
}