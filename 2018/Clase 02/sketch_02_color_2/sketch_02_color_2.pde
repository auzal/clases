void setup(){
  size(400,400);
}


void draw(){
  background(0,171,216); 
  fill(0,128,0);
  strokeWeight(4);
  rect(50,50,100,100);
  
  fill(255,0,0, 128); // el cuarto valor, es la opacidad, es decir, cuan transparente es el color. 
  // 0 es transparente del todo, 255 es opaco del todo
  stroke(255,255,255);
 // noFill();
 // noStroke(); 
  strokeWeight(10);
  ellipse(mouseX, mouseY, 100, 100);
  
  //stroke();

}