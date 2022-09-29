// Jeremias Nahuel Lanza 91373/9

PImage img, pj, pj1, red,pl; 
Player player, player1;
Redes redes;
Fondo fondo;
Pelota pelota;
void setup() {
  size(800, 600);
  pl = loadImage ("pl.png");
  img = loadImage ("img.png");
  pj = loadImage ("pj.png");
  pj1 =loadImage ("pj1.png");
  red= loadImage ("red.png");
  pelota = new Pelota (pl,width /2- width/3+ 10, height/2-120) ;
  redes = new Redes (red, width/2, 0);
  player1 = new Player (pj1, width/2 + width/3, height/2);
  player = new Player (pj, width /2-width/3, height/2);
  fondo= new Fondo (img, 0, 0);
}
void draw() {

  fondo.dibujar () ;
  player.dibujar ();
  player1.dibujar ();
  player.mover();
  player1.mover1();
  redes.dibujar () ;
  pelota.dibujar();
 // pelota.mover ();
}
//width /2- width/3+ 10, height/2-120
