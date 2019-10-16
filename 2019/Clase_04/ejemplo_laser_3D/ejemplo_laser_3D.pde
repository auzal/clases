// Este es un ejemplo del barrido laser pero utilizando rotaciones y traslaciones en espacio tridimensional


void setup() {
  size(600, 600, P3D); // agrego un parámetro más a la función size(), indicando que este sketch va a usar el motor de render 3D
  
}


void draw() {
  background(0); 
  fill(0, 255, 0, 90);
  stroke(0, 255, 0);
  
  translate(width/2, height/2, 400); //traslado el origen del sistema de coordenadas al centro de la pantalla, y 400 pixels en z "hacia mi"
  rotateX(radians(90)); // roto el sistema de coordenadas 90 grados en el eje X, es decir, hago que el sistema de coordendas quede horizontalmente "paralelo" a mi mirada
  rotateX(radians(sin(radians(frameCount))*45)); // roto en X una cantidad de grados que van en progresión sinusoidal entre -45 y 45 grados
  triangle(0, 0, -200, -400, 200, -400); // dibujo un triángulo que va desde la coordenada 0,0, es decir, el centro de la pantalla corrido 400 pixels en z, y dos puntos que están en más "atrás"
  
  
}
