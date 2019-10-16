float xa;
float ya;
float xb;
float yb;
float xmid;
float ymid;
float angulo;
float longitud;

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  xa = width/2 + random(-50, 50);
  ya = height/2 + random(-50, 50);
  xb = width/2 + random(-50, 50);
  yb = height/2 + random(-50, 50);
  line(xa, ya, xb, yb);
}


void draw() {
}


void keyPressed() {
  xmid = lerp(xa, xb, 0.5);
  ymid = lerp(ya, yb, 0.5);
  angulo = atan2(yb-ya, xb-xa);
  if (random(10) < 5) {
    angulo += HALF_PI;
  } else {
    angulo -= HALF_PI;
  }
  angulo += radians(random(-2, 2));
  longitud = random(20, 150);
  float delta_x = cos(angulo) * longitud;
  float delta_y = sin(angulo) * longitud;
  xa = xmid;
  ya = ymid;
  xb = xa + delta_x;
  yb = ya + delta_y;
  line(xa, ya, xb, yb);
}
