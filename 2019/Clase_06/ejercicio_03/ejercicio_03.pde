//hacer un sketch que en cada ciclo de draw dibuje 200 círculos concéntricos 
//(centrados en la pantalla), los circulos deben ir en gradiente de blanco a 
//negro (empezando por el más grande negro, y cuanto más pequeños más blancos).

int diametro;


void setup(){
  size(800,800);
  diametro = 0;
  noStroke();
}


void draw(){
  
  background(255);
  
  diametro = 800;
  for(int i = 0 ; i < 200 ; i++){
    fill(i);
    ellipse(width/2, height/2, diametro, diametro);
    diametro -= 4;

  }

}
