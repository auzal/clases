void setup() {

  size(500, 500);
  noStroke();
  background(255);
}

void draw() {
  background(255);
  fill(255, 154, 3, 128);
  ellipse(width/2, height/2-50, 200, 200);
  fill(3, 255, 194, 128);
  ellipse(width/2 - 50, height/2+50, 200, 200);
  fill(131, 37, 191, 128);
  ellipse(width/2 + 50, height/2+50, 200, 200);
}