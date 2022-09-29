class Player {
  PImage pj;
  int x, y ;
  Player (PImage pj_, int x_, int y_) {
    x = x_;
    y = y_;
    pj = pj_ ;
  }
  // funcion dibujar y funcion mover
  void dibujar () {
    push ();
    imageMode (CENTER);
    image (pj, x, y);
    pop ();
  }
  void mover() {
    if (keyPressed && keyCode == UP) {
      py = py-2;
    } else if (y<height/2) {
      py=py+1 ;
    }
  }
  void mover1 () {
    if (keyPressed && keyCode == LEFT) {
      px1=px1-1;
    }
    if (keyPressed && keyCode == RIGHT) {
      px1=px1+1;
    }
  }
}
