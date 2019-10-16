int grados;

void setup(){
  size(800,800);
  grados = 0;
  rectMode(CENTER);
  noFill();
  stroke(255);
  background(0);

}


void draw(){

    background(0);
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(grados));
    rect(0,0,100,100);
    popMatrix();
    pushMatrix();
    translate(200,200);
    rotate(radians(grados*3));
    rect(0,0,50,50);
    popMatrix();
    
    translate(mouseX,mouseY);
    rotate(radians(-grados));
    rect(0,0,50,50);
    
    grados++;
    
    
    
    

}
