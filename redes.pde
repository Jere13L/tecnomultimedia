class Redes {
  PImage red;
  int x, y;
  Redes (PImage red_, int x_, int y_) {
    x_ = x;
    y_ = y;
    red = red_ ;
  }
  void dibujar () {
    push() ;
    image (red, x, y);
    pop();
  }
}
