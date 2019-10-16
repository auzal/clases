// ESTE ES UN EJEMPLO DE TRANSFORMACIONES DE MATRIZ.
// EN ESTE CASO TRASLADO Y ROTO EL SISTEMA DE COORDENADAS
// FIJATE QUE DIBUJO TODAS LAS FIGURAS EN LA POSICIÓN 0,0, 
// Y PARA CAMBIAR LAS POSICIONES SOLO CORRO DE LUGAR Y ROTO EL ORIGEN DEL SISTEMA DE COORDENADAS

// SIEMPRE DIBUJO LO MISMO, DOS LINEAS QUE PARTEN HACIA LA DERECHA Y HACIA ABAJO DESDE EL ORIGEN, Y UNA ELIPSE QUE TIENE UNA LINEA QUE MARCA LA ROTACIÓN

void setup() {
  size(600, 600);
}


void draw() {
  background(0);
  
  

  pushMatrix(); // uso pushMatrix() para guardar un estado de la matrix, y popMatrix() para volver a ese estado, siempre se usan juntas
  //esto dibuja las figuras blancas
  stroke(255);
  fill(255, 200);
  translate(width/2, height/2); // me corro a la mitad de la pantalla
  strokeWeight(1);
  line(0, 0, 200, 0);
  line(0, 0, 0, 200);
  strokeWeight(4);
  ellipse(0, 0, 30, 30);
  line(0, 0, 15, 0);

  // esto dibuja las figuras rojas
  stroke(255, 0, 0);
  rotate(radians(30)); // roto 30 grados (desde donde estaba, las transformaciones son acumulativas!!!)
  translate(100, 0); // me corro 100 pixels en x
  // como rote antes de transladar la traslación se hizo a 30 grados
  fill(255, 0, 0, 200);
  strokeWeight(1);
  line(0, 0, 200, 0);
  line(0, 0, 0, 200);
  strokeWeight(4);
  ellipse(0, 0, 30, 30);
  line(0, 0, 15, 0);

  // esto dibuja las figuras azules
  stroke(0, 0, 255);
  translate(-300, 0);// me traslado -300 pixels en x con respecto al origen anterior
  fill(0, 0, 255, 200);
  strokeWeight(1);
  line(0, 0, 200, 0);
  line(0, 0, 0, 200);
  rotate(radians(-45)); // roto -45 grados (como ya estaba rotado 30 grados esto resulta en una rotación absoluta de -15 grados)
  // como rote después de dibujar las lineas solo está rotada la elipse
  strokeWeight(4);
  ellipse(0, 0, 30, 30);
  line(0, 0, 15, 0);
  popMatrix(); // vuelvo al estado inicial de la matriz, antes de hacer todas las transformaciones


  // esto dibuja las figuras verdes
  stroke(0, 255, 0);
  fill(0, 255, 0, 200);
  strokeWeight(1);
  line(0, 0, 200, 0);
  line(0, 0, 0, 200);
  strokeWeight(4);
  ellipse(0, 0, 30, 30);
  line(0, 0, 15, 0);
}
