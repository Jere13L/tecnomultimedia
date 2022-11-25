class Pelota {
  PImage pl;
  float x, y, tamX=50, tamY = 50;
  Pelota ( float x, float y, float tamX) {
    this.x = x;
    this.y = y;
    this.tamX = tamX;
    pl = loadImage ("pl.png");
  }
  void dibujar () {
    push ();
    image (pl, x, y);
    pop ();
  }
  void mover() {
    y = y + 1;
  }
  void reiniciar () {
    if (y >= 600) {
      y= -50;
      x= random (0, 600);
    }
  }
  boolean colision(float posX_, float posY_, float tamX_, float tamY_) {
    if (y-tamY/2 < posY_+tamY_/2 &&
      y+tamY/2 > posY_-tamY_/2 &&
      x-tamX/2 < posX_-tamX_/2 &&
      x+tamX/2 > posX_-tamX_/2) {
        y= -50;
      x= random (0, 600);
      return true;
    } else {
      return false;
    }
  }
}
