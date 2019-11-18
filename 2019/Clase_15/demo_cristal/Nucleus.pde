class Nucleus{
    
  float x;
  float y;
  
  Nucleus(float x_, float y_){
    x = x_;
    y = y_;
  
  }

  void draw(){
    pushStyle();
    noFill();
    stroke(90);
    ellipse(x,y,20,20);
    popStyle();
  }

}
