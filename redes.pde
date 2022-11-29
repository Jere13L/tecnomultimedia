class Redes {
  PImage red;
  int x, y;
  Redes (PImage red_, int x_, int y_) {
    this.x = x_;
    this.y = y_;
    this.red = red_ ;
  }
  void dibujar () {
    push() ;
    imageMode (CENTER);
    image (red, x, y);
    pop();
  }
}
