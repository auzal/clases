void setup() {
  size(800, 800);
  rectMode(CENTER); // la función rectMode() determina desde donde se dibujan los rectángulos. Por defecto se dibujan desde la esquina superior izquierda
  // si llamamos a rectMode(CENTER) hacemos que se dibujen desde el centro
}


void draw() { 
  background(0); //  pinto del fondo de negro en cada cuadro
  noFill(); // quito el relleno a las figuras
  stroke(255); // fijo el color de contorno a blanco
  strokeWeight(5); // fijo el ancho de contorno a 5 pixels
  ellipse(200, 200, 100, 100); // dibujo un elipse de 100 pixels de ancho y 100 de alto, en la coordenada x=200 y=200
  line(50, 100, 300, 60); // dibujo una linea entre la posicion x=50  y=100 y la posicion x=300 y=60
  triangle(300, 100, 500, 100, 450, 200); //dibujo un triángulo definiendo sus tres vértices x=300 y=100, x=500 y=100 y x=450 y=200
  rect(100, 400, 100, 200); //dibujo un rectángulo en la posición x=100 y=400 de 100 pixels de ancho y 200 pixels de alto
  rect(350, 400, 200, 200, 50); // dibujo un rectángulo en la posición x=350 y=400 de 200 pixels de ancho y 200 pixels de alto. El quinto parámetro es el radio para curvar todas las esquinas
  rect(650, 400, 200, 200, 50, 10, 100, 5); //igual al anterior, pero con una curvatura distinta para cada esquina
  point(400, 600); // dibujo un punto en la posición x=400 y=600
}
