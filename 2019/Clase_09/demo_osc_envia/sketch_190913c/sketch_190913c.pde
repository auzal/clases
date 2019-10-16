
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup(){
  size(500,500);
  background(0);
  oscP5 = new OscP5(this,12000);
    myRemoteLocation = new NetAddress("127.0.0.1",12000);

}


void draw(){

}


void mouseDragged(){
  stroke(255);
  
  line(mouseX,mouseY,pmouseX,pmouseY);
  
  sendMessage(mouseX, mouseY);
}


void keyPressed(){
background(0);
}

void sendMessage(float x, float y){
  OscMessage myMessage = new OscMessage("/test");
  myMessage.add(x*1.0/width); /* add an int to the osc message */
  myMessage.add(y*1.0/height); /* add a float to the osc message */
  /* send the message */
  oscP5.send(myMessage, myRemoteLocation);
}
