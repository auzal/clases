float x;
float y;
float prev_x;
float prev_y;
float prev_mouse_x;
float prev_mouse_y;

void setup() {
  size(800, 800);
  x = 0;
  y = 0;
  prev_x = 0;
  prev_y = 0;
  prev_mouse_x = 0;
  prev_mouse_y = 0;
  background(0);
  noFill();
  stroke(255);
  strokeWeight(2);
}
void draw() {
}

void mousePressed() {
  stroke(255);
  ellipse(mouseX, mouseY, 50, 50);
  x = random(mouseX - 200, mouseX + 200);
  y = random(mouseY - 200, mouseY + 200);  
  ellipse(x, y, 30, 30);
  line(mouseX, mouseY, x, y);
  
  stroke(255, 0, 0);
  line(x, y, prev_x, prev_y);
  line(mouseX, mouseY, prev_mouse_x, prev_mouse_y);
  
  prev_x =x;
  prev_y = y;
  prev_mouse_x =mouseX;
  prev_mouse_y = mouseY;
}