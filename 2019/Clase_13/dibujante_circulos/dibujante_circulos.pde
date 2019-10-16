float x_nuevo;
float y_nuevo;
float radio_nuevo;
float x_anterior;
float y_anterior;
float radio_anterior;


void setup() {
  size(800, 800);
  x_nuevo = width/2;
  y_nuevo = height/2;
  radio_nuevo = random(20, 100);
  background(0);
  stroke(255);
  strokeWeight(4);
  noFill();
  ellipse(x_nuevo, y_nuevo, radio_nuevo * 2, radio_nuevo * 2);
}


void draw() {
}

void keyPressed() {
  fill(0,20);
  noStroke();
  rect(0,0,width,height);
  x_anterior = x_nuevo;
  y_anterior = y_nuevo;
  radio_anterior = radio_nuevo;
  x_nuevo = x_nuevo + random(-50,50);
  y_nuevo = y_nuevo + random(-50,50);
  radio_nuevo = dist(x_nuevo, y_nuevo, x_anterior, y_anterior) - radio_anterior;
   stroke(255);
  ellipse(x_nuevo, y_nuevo, radio_nuevo * 2, radio_nuevo * 2);

}
