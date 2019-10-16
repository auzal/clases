
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
float x;
float y;
float px;
float py;

boolean draw;
void setup() {
  size(400, 400);
   background(246,246,230);
  oscP5 = new OscP5(this, 13000);
 // myRemoteLocation = new NetAddress("127.0.0.1", 12000);
  draw = false;
}

void keyPressed() {
  background(246,246,230);
}


void draw() {

  if (draw) {
    stroke(random(10,40));
    strokeWeight(1);
    //background(random(255));
    for(int i = 0 ; i < 3 ; i++){
      
      line(x+random(-3,3),y+random(-3,3),px+random(-3,3),py+random(-3,3));
    }
    
    draw=false;
  }
}

void oscEvent(OscMessage theOscMessage) {

  if (theOscMessage.addrPattern().equals("/test")) {
    px = x;
    py = y;
    x = theOscMessage.get(0).floatValue();
    y = theOscMessage.get(1).floatValue();
    x*=width;
    y*=height;
    draw = true;
  }
}
