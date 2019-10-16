void setup() {
  size(500, 500);
  rectMode(CENTER); // la función rectMode() determina la forma en que se dibujan los rectángulos
  // si uso rectMode(CENTER), los rectángulos se dibujan desde el centro,
  // no desde su esquina superior izquierda
}

void draw() {
  noStroke();
  fill(34, 57, 106);
  rect(width/2, height/2, 100, 100);
  fill(81, 66, 90 );
  rect(width/2, height/2 + 125, 100, 150);
  fill(214, 183, 162 );
  rect(width/2, height/2 - 100, 100, 100);
}

void mousePressed() { // la función mousePressed() se dispara cada vez que se presiona un botón del mouse
  saveFrame("autoretrato.jpg"); //  la función saveFrame() guarda lo que está actualmente dibujado
  // en la carpeta en la cual está guardado el código
}