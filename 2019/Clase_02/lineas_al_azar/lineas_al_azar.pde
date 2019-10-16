void setup() {
  size(500, 500);
  background(0); // pinto el fondo una vez de negro
}


void draw() {

  stroke(255, 20); // fijo el color de contorno como blanco con opacidad 20
 // stroke(255, random(255), random(255), 20); // si descomento esta linea las lineas van a tener un color al azar en lugar de ser blancas
  line(random(width), random(height), random(width), random(height)); // dibujo una línea entre dos puntos elegidos al azar entre el ancho total y al alto total de la pantalla
  //la función random() nos devuelve un número al azar entre los dos parámetros que le pasemos entre los paréntesis. si le pasamos un solo parámetro, el valor que devuelve es entre 
  // 0 y ese parámetro. por ejemplo, si llamo  random(5), la función me va a devolver un número al azar entre 0 y 5
  // la variable de sistema width guarda siempre el ancho del lienzo (en este caso, 500) y la variable de sistema height guarda siempre el alto del lienzo (tambien 500)
  
  // este ejemplo dibuja una linea por cuadro, pero como no vuelvo a pintar el fondo, si lo dejo correr empiezo a ver la acumulación de todas las líneas
}
