//variables
PImage img, pj, pj1, red, pl; 
int px =137, py = 300;
int px1 =533, py1 = 300;

// clases y sus respectivos objetos
Player player, player1;
Redes redes;
Fondo fondo;
Pelota pelota;
class Juego {
  Juego () {
    // carga de imagenes
    pl = loadImage ("pl.png");
    img = loadImage ("img.png");
    pj = loadImage ("pj.png");
    pj1 =loadImage ("pj1.png");
    red= loadImage ("red.png");
  }
  void dibujar () {
    // inicializacion de objetos
    pelota = new Pelota (pl, width /2- width/3+ 10, height/2-120) ;
    redes = new Redes (red, width/2, 0);
    player1 = new Player (pj1, px1, py1);
    player = new Player (pj, px, py);
    fondo= new Fondo (img, 0, 0);

    // dibujo de objetos
    fondo.dibujar () ;
    player.dibujar ();
    player1.dibujar ();
    redes.dibujar () ;
    pelota.dibujar();
    player.mover();
    player1.mover1();
  }

     
}
