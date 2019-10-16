void setup(){

size(500,500);
stroke(0);

}


void draw(){


}

void mousePressed(){
  
  int ancho = (mouseX - (width/2)) * 2;
  fill(random(255), 0,0 );
  ellipse(width/2,height/2, ancho, ancho );
  
  


}