PImage foto;

PImage[] tiras;


void setup() {
  size(1000, 676);
  foto = loadImage("auto.jpg");
}


void draw() {
  tiras = new PImage[int(map(mouseX, 0, width, 1, 40))*2];
  for (int i = 0; i < tiras.length; i++) {
    PImage una_tira = createImage(int(width/tiras.length), 676, RGB);
    una_tira.copy(foto, una_tira.width*i, 0, una_tira.width, 676, 0, 0, una_tira.width, 676);
    tiras[i] = una_tira;
  }
  for (int i = 0; i < tiras.length; i ++) {
    //tint(random(255), random(255), random(255));
    image(tiras[i+1], i * int(width/tiras.length), 0 );
    i++;
    image(tiras[i-1], i * int(width/tiras.length), 0 );
  }
}
