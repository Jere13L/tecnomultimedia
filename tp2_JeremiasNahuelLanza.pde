// declaracion 
int cant = 80;
int te ; 
int red = 245 ;
int green = 0 ;
int blue = 0 ;
int tono;
void setup () {
  size (800, 600);
}
void draw () {
  background (100, 255, 50);
  formasEnCicloFor();

  // otorgamos interactividad en los colores
  if (keyPressed) {
    if (key == 'q')
      red= 247;
    green = 25;
    blue = 193;
    if (keyPressed) {
      if (key == 'e')
        red= 22;
      green = 209;
      blue = 240;
      if (keyPressed) {
        if (key == 'h')
          red= 26;
        green = 8;
        blue = 250;
      }
    }
  }
}

// reseteamos color
void mousePressed () {
  red =256;
  blue= 0;
  green=0;
}
void formasEnCicloFor() {
  te = width/cant ;
  // declaracion desde a de donde a donde van las formas. 

  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      //  declaramos dist para calcular la distancia del mouse con las formas
      float distan= dist (mouseX, mouseY, x*te, y*te) ;
      // declaramos la variable tono para darle opacidad donde se mueve x e y en el mouse
      float tono = distan*550/dist (width/2+25, height/2+15, 0, 0);
      tono += random( -40, 70 );  //offset
      fill (red, green, blue, tono);
      rect (x*te, y*te, te, te);
      stroke (25);

      if ((x+y) % 2==0) {
        float te= map (800/3, 600/4, width/cant, 20, 10);
        fill( 247, 100, 50) ;
        ellipse (x*te, y*te, te, te);
      }
      if ((x+y) % 2==0) {
        fill( 23, 250, 235) ;
        ellipse (x*te, y*te, te/2, te/2);
      }
    }
  }
}
