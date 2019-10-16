PImage foto;
PImage pincel;

float x;
float y;

void setup() {
  size(550, 800);
  foto = loadImage("demo_xa2.jpg");
  foto.resize(550,0);
  pincel = loadImage("pincel.png");
  pincel.resize(50, 0);
  imageMode(CENTER);
  noStroke();
}

void draw() {
  for (int i = 0; i < 500; i++) {
    x = random(width);
    y = random(height);
   
    pushMatrix();
    translate(x, y);
    float ang = atan2(y-height/2, x-width/2);
  // rotate(ang + HALF_PI + radians(random(-10,10))) ;
    rotate(radians(brightness(foto.get(int(x), int(y)))));
  // rotate(random(TWO_PI));
  // rotate(ang);
    tint((foto.get(int(x), int(y))), 180);
    float scale = random(0.5,1);
    image(pincel, 0, 0);
    //for (int j = 0; j < 20; j ++ ) {
    //  fill(foto.get(int(x), int(y)),90);
    //  ellipse( j*2, 0, (20-j)/2, (20-j)/2);
    //}
    popMatrix();
  }
}
