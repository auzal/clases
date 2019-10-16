// este ejemplo dibuja una elipse cuyo diámetro y color de relleno
// son proporcionales a la distancia a la que se encuentra del centro de la pantalla

float distancia;// declaro tres variables, una para computar la distancia entre el mouse y el centro de la pantalla
float diametro; // una para computar el diámetro de la elipse
float gris; // y otra para computar el color de relleno

void setup() {
  size(500, 500);
  diametro = 0; // inicializo las tres variables en "0"
  distancia = 0;  
  gris = 0;
  noCursor(); //la función noCursor(); apaga el cursor del mouse
}

void draw() {  
  background(255); // pinto el fondo de blanco
  // la funcion dist(float, float, float, float) me devuelve la distancia en px entre un par de coordenadas y otro
  distancia = dist(mouseX, mouseY, width/2, height/2); // guardo en "distancia" la distancia que hay entre el mouse y el centro de la pantalla
  diametro = map(distancia, 0, 334, 10, 60 ); // uso map() para convertir la distancia (que va de 0 a 334 px) a un valor de rango 10 a 60
  gris = map(distancia, 0, 334, 200, 0 ); //  uso map() para convertir la distancia (que va de 0 a 334 px) a un valor de rango 200 a 0
  fill(gris); //  fijo el color de relleno como el valor de gris que acabo de calcular (que va de 0 a 200)
  ellipse(mouseX, mouseY, diametro, diametro); // dibujo una elipse en la posición del mouse, con un diámetro igual a la variable "diametro", que calculé más arriba
  line(mouseX, mouseY, width/2, height/2); // dibujo una linea entre el mouse y el medio de la pantalla
}