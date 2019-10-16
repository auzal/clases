float ang_segundos;
float ang_minutos;
float ang_horas;

void setup() {
  size(800, 800);
  background(0);
  ang_segundos = 0;
}

void draw() {
  strokeWeight(1);
  background(0);
  stroke(255);
  translate(width/2, height/2);
  pushMatrix();
  for (int i = 0; i < 12; i++) {
    line(0, -300, 0, -250);
    rotate(radians(360/12));
  }
  popMatrix();
  ang_segundos = map(second(), 0, 60, 0, 360);
  ang_segundos -= 90;
  pushMatrix();
  rotate(radians(ang_segundos));
  line(0, 0, 300, 0);
  popMatrix();
  
  strokeWeight(3);
  
  ang_minutos = map(minute(), 0, 60, 0, 360);
  ang_minutos -= 90;
  pushMatrix();
  rotate(radians(ang_minutos));
  line(0, 0, 250, 0);
  popMatrix();
  
  ang_horas = map(hour(), 0, 24, 0, 720);
  ang_horas -= 90;
  pushMatrix();
  rotate(radians(ang_horas));
  line(0, 0, 150, 0);
  popMatrix();
}
