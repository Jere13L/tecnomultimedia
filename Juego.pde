//variabl =es

// clases y sus respectivos objetos

class Juego {
  Player player, player1;
  Redes redes;
  Fondo fondo;
  Pelota pelota;

  Juego () {
  fondo = new Fondo (0,0);
  pelota = new Pelota ( width /2- width/3+ 10,height/2-120) ;
  player = new Player (200,200, width/2, height/2);
  player1 = new Player (200,200,width/3, height/2);
  }
  void dibujar () {
    // inicializacion de objetos
    //pelota = new Pelota (pl, width /2- width/3+ 10, height/2-120) ;
    //redes = new Redes (red, width/2, 0);
    //player1 = new Player (pj1, px1, py1);
    //player = new Player (pj, px, py);
    //fondo= new Fondo (img, 0, 0);

    // dibujo de objetos
    fondo.dibujar () ;
    player.dibujar ();
    //player1.dibujar ();
    //redes.dibujar () ;
    pelota.dibujar();
    //player.mover();
    //player1.mover1();
  }
}
//1.mover1();
