void setup() {
  size(500, 500);
}


void draw() {
  background(255);
  triangle(mouseX-100, mouseY+50,mouseX, mouseY-50, mouseX+100, mouseY+50);
  println("mouseX: " + mouseX + " ||  mouseY: " + mouseY);  // la función println sirve para escribir cosas en la consola
  // en este caso, las posición del mouse
 
}