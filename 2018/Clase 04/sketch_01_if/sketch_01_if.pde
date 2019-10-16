void setup() {
  size(500, 500); 
}

void draw() {
  // acá no va nada, solo quiero que se dibujen cosas cuando presiono el mouse
}

void mousePressed() { // dentro de esta función va lo que quiero que suceda una vez que se presiona el mouse
  if(mouseY < 250){ // si el la posición en el eje Y del mouse es menor que 250, sucede lo que está entre las llaves
    fill(255); // es decir, fijo el color de relleno como blanco
  }else{ // sino (es decir, si la posición en y del mouse es mayor a 250)
    fill(0);  // fijo el color de relleno como negro  
  }
  ellipse(mouseX, mouseY, 50,50);  // dibujo una elipse en la posicion del mouse, de 50 px de diametro
}