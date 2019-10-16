void setup(){
  size(800,800);

}


void draw(){
      
     int distancia_maxima = 200;
     stroke(0, random(255) ,0);
     line(mouseX, mouseY, random(mouseX-distancia_maxima, mouseX + distancia_maxima), random(mouseY - distancia_maxima , mouseY + distancia_maxima) );

}