class Boton {
  String cartel;
  float x, y, tamX, tamY;

  Boton(String cartel, float x, float y, float tamX, float tamY) {
    this.cartel = cartel; 
    this.x = x; 
    this.y = y; 
    this.tamX = tamX; 
    this.tamY = tamY;
  }

  void dibujar() {
    push();
    noFill();
    strokeWeight(2);
    rectMode(CENTER);
    rect(x,y,tamX, tamY);
    textSize(40);
    textAlign(CENTER);
    text(cartel, x, y);
    pop();
  }
}
