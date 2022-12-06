class Player {
  //propiedades
  PImage img, pj1;
  float px, py, px1, py1;
  float tamX, tamY;
  //contructor
  Player (PImage img, float px, float py, float tamX, float tamY) {
    this.img = img;
    this.px=px;
    this.py=py;
    this.tamX=tamX;
    this.tamY=tamY;
  }
  // funcion dibujar y funcion mover
  void dibujar () {
    push ();
    
    imageMode (CENTER);
    image (img, px, py);
    pop ();
  }
  void mover() {

    px = map(mouseX,0,width,0,width/2-50);
  }
}
