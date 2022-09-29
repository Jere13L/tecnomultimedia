class Pelota {
  PImage pl;
  float x, y;
  Pelota (PImage pl_, float x_, float y_) {
    x = x_;
    y = y_;
    pl = pl_;
  }
  void dibujar () {
    push ();
    image (pl, x, y);
    pop ();
  }

  //void mover ());

  //  }

  //}
}
