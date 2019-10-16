
float x;
float y;

// el ángulo entre la posición del gusanito y el mouse
float ang;

void setup() {
  size(800, 800);
  // arranco el gusanito en un lugar al azar en la pantalla
  x = random(width);
  y = random(width);
  background(0);
  fill(255,20);
  noStroke();
}


void draw() {
  // calculo el ángulo entre el gusanito y el mouse
  ang = atan2(mouseY-y, mouseX-x);
  
  //elijo un número al azar entre 0 y 100
  float prob = random(100);

  int eleccion; // en esta guardo la "dirección" (arriba abajo derecha izquierda) en la que voy a mover la elipse
  
  if (prob < 60) { //  si prob es menor que 60
    eleccion = int(random(0, 3)); // elijo la dirección al azar
  } else { // sino
    eleccion = int(map(ang, -PI, PI, 0, 4)); // la elijo en función del angulo entre el gusanito y el mouse
  }
  
  // en función de elección cambio x e y, es decir, "muevo" el gusanito
  if (eleccion == 0) {
    x-=5;
  } else if (eleccion == 1) {
    y-=5;
  } else if (eleccion == 2) {
    x+=5;
  } else if (eleccion == 3) {
    y+=5;
  } else if (eleccion == 4) {
    x-=5;
  }

  // esto hace que si me fui de los límites de la pantalla vuelva a aparecer
  if (x>width) {
    x = 0;
  } else if (x<0) {
    x= width;
  }
  if (y>height) {
    y = 0;
  } else if (y<0) {
    y= height;
  }
  
  // finalmente, dibujo el gusanito
  ellipse(x, y, 20, 20);
}
