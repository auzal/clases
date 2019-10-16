float x; 
float y;
float ang;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  x = random(50, width-50);
  y = random(50, height-50);
}

void draw() {
  background(0);
  ang = map(mouseX, 0, width, -180, 180);
  translate(x, y);
  rotate(radians(ang));
  rect(0, 0, 100, 100);
  line(0,0,100,0);
}