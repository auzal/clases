//hacer un sketch que en cada ciclo de draw dibuje 200 círculos concéntricos 
//(centrados en la pantalla), los circulos deben ir en gradiente de blanco a 
//negro (empezando por el más grande negro, y cuanto más pequeños más blancos).

int diametro;

float rojo;
float verde;
float azul;

void setup(){
  size(800,800);
  diametro = 0;
  noStroke();
  
  rojo = 0;
  verde = 0;
  azul = 0;
}


void draw(){
  
  background(255);
  
  diametro = 800;
  for(int i = 0 ; i < 200 ; i++){
    
    rojo = map(i, 0, 200, 0, 255);
    verde = map(i, 0, 200, 255, 0);
    azul = map(i, 0, 200, 232, 94);
    
    fill(rojo, verde, azul);
    
    ellipse(width/2, height/2, diametro, diametro);
    diametro -= 4;

  }

}
