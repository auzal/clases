String [] poema;
PFont fuente;
String [] palabras;
int indice ;

float x;
float y;
float z;

void setup() {
  size(800, 800, P3D);
  poema = loadStrings("of travel.txt");
  fuente = loadFont("SourceSansPro-ExtraLight-40.vlw");
  textFont(fuente);
  palabras = splitTokens(poema[0], " ");
  indice = 0;
  background(0);
  textAlign(CENTER, CENTER);
}


void draw() {
}

void keyPressed() {




  if (indice < palabras.length ) {


    float nuevo_x = random(50, width-50);
    float nuevo_y = random(50, height-50);
    float nuevo_z = random(50, height-50);

    //pushMatrix();
    //translate(nuevo_x, nuevo_y, nuevo_z);
    text(palabras[indice],nuevo_x, nuevo_y, nuevo_z);
   // popMatrix();



    stroke(255);
    if (indice>0)
      line(x, y, z, nuevo_x, nuevo_y, nuevo_z);
    indice++;
    x = nuevo_x;
    y= nuevo_y;
    z = nuevo_z;
  }
}