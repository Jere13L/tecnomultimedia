// Jeremias Nahuel Lanza 91373/9
// minijuego
// voley 
Manosjugador manosjugador;
Redes redes;
void setup() {
  size(400, 400);
  manosjugador= new Manosjugador (imagen, x, y);
  //imagen de fondo arena estilo dibujo naranja
}
void draw() {
  manosjugador.dibujar ();
  redes.dibujar () ;
  zonapunto.dibujar () ;
}
