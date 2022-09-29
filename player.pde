class Player {
  PImage pj;
  int x, y ;
  Player (PImage pj_, int x_, int y_) {
    x = x_;
    y = y_;
    pj = pj_ ;
  }
  void dibujar () {
    push ();
    imageMode (CENTER);
    image (pj, x, y);
    pop ();
  }
  void mover() {
    if (keyPressed && keyCode == UP) {
      y = y-2;
    } else if (y<height/2) {
      y=y+1 ;
    }
  }
  void mover1 () {
    if (keyPressed && keyCode == LEFT) {
      x=x-1;
    }
    if (keyPressed && keyCode == RIGHT) {
      x=x+1;
    }
  }
}
