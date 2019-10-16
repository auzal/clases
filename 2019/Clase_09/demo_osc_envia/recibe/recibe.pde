
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
float x;
float y;
boolean draw;
void setup(){
  size(200,600);
  background(255);
  oscP5 = new OscP5(this,12000);
  //myRemoteLocation = new NetAddress("127.0.0.1",12000);
  draw = false;

}

void keyPressed(){
background(255);
}


void draw(){
  
  if(draw){
    stroke(random(255),0,0,20);
    strokeWeight(2);
    //background(random(255));
    line(x*width,y*height,width/2,height/2);
    fill(0,90);
    noStroke();
  //  ellipse(x*width,y*height,5,5);

draw=false;}

}

void oscEvent(OscMessage theOscMessage) {
  
  if(theOscMessage.addrPattern().equals("/test")){
    
    x = theOscMessage.get(0).floatValue();
    y = theOscMessage.get(1).floatValue();
    draw = true;
    
  }  
}
