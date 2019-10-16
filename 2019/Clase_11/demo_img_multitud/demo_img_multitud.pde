PImage multitud;

PImage muestra;


void setup() {
  size(800, 800);
  multitud = loadImage("multitud.jpg");
  multitud.filter(GRAY);
  muestra = createImage(25, 25, RGB);
  background(255);
}


void draw() {
  for(int i = 0 ; i < 10 ; i ++){
  
   muestra.copy(multitud, int(random(multitud.width)), int(random(multitud.height)), 50, 50, 0,0, 25, 25);
   tint(255,60);
   image(muestra, random(width), random(height));
  }
}
