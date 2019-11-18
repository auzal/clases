class Avion {

  PImage foto;
  float x;
  float y;
  float velocidad;
  float direccion;
  color tintura;

  Avion() {
    foto = loadImage("Airplane-Bottom-View-PNG-715x715.png");
    float scale = random(0.05,0.1);
    foto.resize(int(foto.width*scale), 0);
    x = random(width);
    y = random(height);
    velocidad = random(2, 6);
    direccion = radians(random(0, 360));
    tintura = color(random(100,255));
  }

  void dibujar() {
    pushMatrix();
    translate(x, y);
    rotate(direccion);
    pushStyle();
    imageMode(CENTER);
    fill(0);
    tint(tintura);
    image(foto, 0, 0);
    popStyle();
    popMatrix();
  }

  void volar() {
    
    
    x+= cos(direccion) * velocidad;
    y+= sin(direccion) * velocidad;
    
    direccion += radians(random(-1,1));

    if (x > width) {
      x = 0;
    } else if (x < 0) {
      x = width;
    }

    if (y > height) {
      y = 0;
    } else if (y < 0) {
      y = height;
    }
  }
}
