void setup(){
  size(400,400); // fijo el tamaño de la ventana en 400px x 400px
}


void draw(){
  background(0,171,216); // pinto el fondo.
  // esto significa: rojo = 0 , verde = 171, azul = 216, esto resulta en un celeste verdoso
  fill(255,0,0);  // fill() fija el color de relleno de las cosas
   // en este caso: rojo = 255, verde = 0, azul = 0, o sea, rojo.
  stroke(255,255,255); // stroke() funciona igual que fill() pero controla el color de contorno
 // noFill(); // noFill() hace que las cosas no tengan relleno
 // noStroke();  //  noStroke() hace que las cosas no tengan contorno
  strokeWeight(1); // strokeWeight() controla el ancho de los contornos en pixels
  ellipse(mouseX, mouseY, 100, 100);
  fill(0,128,0);
  strokeWeight(4);
  rect(50,50,100,100);
  //stroke();

}