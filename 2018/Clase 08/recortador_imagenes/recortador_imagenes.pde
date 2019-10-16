int index = 1;
int amt = 9;
PGraphics eyes;
PGraphics nose;
PGraphics mouth;

PImage raw;
int eye_level = 270;
int mouth_level =  440;

void setup() {
  size(800, 800);
}

void draw() {
  
  background(255);

  raw = loadImage("crudo/"+index+".jpg");
  imageMode(CENTER);
  eyes = createGraphics(raw.width, eye_level);
  nose = createGraphics(raw.width, mouth_level - eye_level);
  mouth = createGraphics(raw.width, height - mouth_level);

  stroke(0, 0, 0);
  noFill();
  strokeWeight(4);
  image(raw, width/2, height/2);

  line(0, eye_level, width, eye_level);
  line(0, mouth_level, width, mouth_level);
  rect(0,0,width,height);

  eyes.beginDraw();
  eyes.copy(raw, 0, 0, eyes.width, eyes.height, 0, 0, eyes.width, eyes.height);
  eyes.endDraw();

  nose.beginDraw();
  nose.copy(raw, 0, eye_level, nose.width, nose.height, 0, 0, nose.width, nose.height);
  nose.endDraw(); 

  mouth.beginDraw();
  mouth.copy(raw, 0, mouth_level, mouth.width, mouth.height, 0, 0, mouth.width, mouth.height);
  mouth.endDraw();

  eyes.save("ojos/"+ index +".jpg");
  nose.save("narices/"+ index +".jpg");
  mouth.save("bocas/"+ index +".jpg");
  
  saveFrame("complete/" + index + ".jpg");
  
  if (index < amt)
    index++;
  else
    exit();
}