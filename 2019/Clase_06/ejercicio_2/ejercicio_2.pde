//hacer un sketch que al presionar una tecla dibuje 50 
//líneas entre la posición del mouse y puntos a azar en la pantalla

void setup(){
  size(800,800);
}


void draw(){
  
}

void keyPressed(){
  for(int i = 0 ; i < 50 ; i++){
    line(mouseX, mouseY, random(width), random(height));
  }

}
