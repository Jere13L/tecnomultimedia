// creacion de la clase
class Fondo {
  // declaraciones
  PImage img;
  int x, y;
  //constructor
  Fondo (PImage img_, int x_, int y_) {
    x = x_;
    y = y_;
    img = img_;
  }
  // funcion de dibujo
  void dibujar () {
    push() ;
    image (img, x, y);
    fill (35, 125);
    noStroke ();
    ellipse (width /2-width/3, height/2+67, 50, 25);
    pop();
  }
}
