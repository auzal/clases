//int a;

int[] arreglo;

void setup() {

  size(500, 500);
  // a = 2019;
  arreglo = new int[6];
  
  arreglo[0] = 2018;
  arreglo[1] = 2019;
  arreglo[2] = 2020;
  arreglo[3] = 2021;
  arreglo[4] = 2022;
  arreglo[5] = 2023;
}


void draw() {
  
  
  //println(a);
}

void keyPressed(){
  println(arreglo[5]);

}
