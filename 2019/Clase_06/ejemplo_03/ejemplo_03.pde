void setup(){
  size(800,800);
  rectMode(CENTER);
}


void draw(){
  background(0);
  fill(255,0,0);
  rect(0,0,100,100);
  translate(width/2, height/2);
  fill(0,255,0);
  rect(0,0,100,100);
  rotate(radians(45));
  fill(255);
  rect(0, 0, 100, 100);


}
