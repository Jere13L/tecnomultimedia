class Zonapunto {
  PImage imagen;
  int x, y, tam;
  Zonapunto (PImage imagen_, int x_, int y_, int tamX_, int tamY_) {
    x_ = x;
    y_ = y;
    tamX_ = tamX;
    tamY_ = tamY
  }
  void dibujar () {
    push() ;
    imageMode (CENTER);
    image (imagen, x, y);
    pop();
  }
}
//metodos 
//limites
//gana 
