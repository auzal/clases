PVector posicion;  // declaro una variable PVector que se llama posicion

void setup(){
  size(800,800); 
  posicion = new PVector(400,400); // le cargo a posición un nuevo vector de valor x = 400 e y = 400
}


void draw(){
  background(0);
  
  ellipse(posicion.x, posicion.y, 50, 50); //dibujo una elipse en la coordenada x e y del vector
  // accedo a cada valor individual con el operador "."
}


void keyPressed(){ // cada vez que presiono una tecla...
  posicion.x = random(width); // cargo en el campo x del vector un valor al azar
  posicion.y = random(height);// cargo en el campo y del vector un valor al azar
  
  //esto funciona de la misma manera
  //posicion.set(random(width),random(height));
}
