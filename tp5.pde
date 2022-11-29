// Jeremias Nahuel Lanza 91373/9
// https://youtu.be/LsX_MSpJ7xg
import ddf.minim.*;
Minim minim;
AudioPlayer efecto;
AudioPlayer music;
// clase contenedora
Juego juego;
void setup() {
  size(800, 600);
  minim = new Minim(this);
  efecto = minim.loadFile("efect.wav");
  music= minim.loadFile("music.wav");
  //inicializacion de objetos
  juego = new Juego ();
}
void draw() {
  // dibujo de objetos
  juego.dibujar ();
  juego.keyPressed();
  //juego.mousePressed();
}
