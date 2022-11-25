class Player2 {
  //propiedades
  PImage img, pj1;
  float px, py, px1, py1;
  float tamX, tamY;
  //contructor
  Player2 (PImage img, float px, float py, float tamX, float tamY) {
    this.img = img;
    this.px=px;
    this.py=py;
    this.tamX=tamX;
    this.tamY=tamY;
  }
  // funcion dibujar y funcion mover
  void dibujar () {
    push ();
    //imageMode (CENTER);
    image (img, px, py);
    pop ();
  }
  void mover2() {
    if (keyPressed && keyCode == LEFT) {
      px=px-10;
    }
    if (keyPressed && keyCode == RIGHT) {
      px=px+10;
    }
  }
}
