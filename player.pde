class Player {
  //propiedades
  PImage pj, pj1;
  float x_, y_, px_, py_, px1_, py1_;
  
  //contructor
  Player (PImage pj,float x, float y, float px, float py) {
    x_ =x;
    y_=y;
    px_=px;
    py_=py;
    pj = loadImage ("pj.png");
  }
 
  
  // funcion dibujar y funcion mover
  void dibujar () {
    push ();
    imageMode (CENTER);
    image (pj, x_, y_);
    pop ();
  }
//  void mover() {
//    if (keyPressed && keyCode == UP) {
//      py_ = py_-2;
//    } else if (y_<height/2) {
//      py_=py_+1 ;
//    }
//  }
//  void mover1 () {
//    if (keyPressed && keyCode == LEFT) {
//      px1_=px1_-1;
//    }
//    if (keyPressed && keyCode == RIGHT) {
//      px1_=px1_+1;
//    }
//  }
}
