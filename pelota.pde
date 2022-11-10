class Pelota {
  PImage pl;
  float x_, y_;
  Pelota ( float x, float y) {
    x_ = x;
    y_ = y;
    pl = loadImage ("pl.png");
  }
  void dibujar () {
    push ();
    image (pl, x_, y_);
    pop ();
  }
}
