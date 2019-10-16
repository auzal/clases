void setup() {
  size(500, 500); 
}


void draw() {
  background(255);
  triangle(mouseX-100, mouseY+50,mouseX, mouseY-50, mouseX+100, mouseY+50); // puedo realizar operaciones matematicas dentro del llamado a una funcion
  
}