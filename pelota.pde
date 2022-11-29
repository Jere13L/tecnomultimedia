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
    if (y-tamY/2 < posY_+tamY_/2 && // si y menos tamY dividido dos es menor a la posicion de y + el tamaño de y dividido dos yy
      y+tamY/2 > posY_-tamY_/2 && // y mas el tamY dividido 2 es mayor a la posicion de y menos el tamaño de y dividido 2 yy
      x-tamX/2 < posX_-tamX_/2 && // x menos el tamx dividido dos es menor a la posicion de x menos tamaño de x dividido 2 yy
      x+tamX/2 > posX_-tamX_/2) { // x mas tamX dividido dos es mayor a la posicion de x menos el tamaño de X dividido dos entonces...
      y= -50;
      x= random (0, 600);
      return true;
    } else {
      return false;
    }
  }
}
