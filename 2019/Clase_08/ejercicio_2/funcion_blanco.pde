
void dibujarBlanco(float x, float y, float diam, int anillos) {

  boolean negro = true;  
  for (int i = int(diam); i > 0; i -= diam/anillos) {
    if (negro) {
      fill(0);
    } else {
      fill(255);
    }
    ellipse(x, y, i, i);
    negro = !negro;
    //if(negro == true){
    //  negro = false;
    //}else if(negro == false){
    //  negro = true;
    //}
  }
}
