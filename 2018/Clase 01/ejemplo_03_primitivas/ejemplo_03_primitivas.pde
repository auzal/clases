void setup() {
  size(500, 500);
}


void draw() {
  background(255);
  rect(250, 250, 150, 100);
  ellipse(100, 100, 160, 100);
  triangle(30,300,100,250,200,300); // para definir un triangulo, defino tres pares de numeros, que son las coordenadas en x e y de cada uno de los vertices
  line(400,150,470,20); // para definir una linea recta, defino dos puntos
  point(250,200); // un punto, lleva solo una coordenada x y una coordenada y
}