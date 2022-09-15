class Manosjugador {
  PImage imagen;
  int x, y, tam;
  Manosjugador (PImage imagen_, int x_, int y_, int tam_) {

    x_ = x;
    y_ = y;
    tam_ = tam ;
    imagen_ = imagen ;
  }
  void dibujar () {
    push ();
    imageMode(CENTER);
    image (imagen, x, y);
    pop ();
  }
}


//metodos 
//colision
