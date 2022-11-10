// creacion de la clase
class Fondo {
  // declaraciones
PImage img;
  int x_, y_;
  //constructor
  Fondo ( int x, int y) {
    x_ = x;
    y_ = y;
    img = loadImage ("img.png");
  }
  // funcion de dibujo
  void dibujar () {
    push() ;
    image (img, x_, y_);
    fill (35, 125);
    noStroke ();
    ellipse (width /2-width/3, height/2+67, 50, 25);
    pop();
  }
}
