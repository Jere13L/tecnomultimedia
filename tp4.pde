// Jeremias Nahuel Lanza 91373/9
// https://youtu.be/_vmaGLtaczw
// en el video no estaba la clase contenedora ya que me la habia olvidado, pero ya esta agregada al tp.
// clase contenedora
Juego juego;
void setup() {
  size(800, 600);
  // inicializacion de objetos
  juego = new Juego ();
}
void draw() {
  // dibujo de objetos
  juego.dibujar ();
}
