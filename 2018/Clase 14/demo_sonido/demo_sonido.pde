import processing.sound.*;

SoundFile archivo;

void setup() {
    size(640,360);
    background(255);
        
    //Load a soundfile
    archivo = new SoundFile(this, "09 Hunting bears.mp3");
}      


void draw() {
  
  archivo.amp(map(mouseX,0,width,0,1));
//  archivo.pan(map(mouseY,0,height,-1,1));
}

void mousePressed(){
  archivo.play();
 // archivo.loop();
 
}

void keyPressed(){
  archivo.stop();
}