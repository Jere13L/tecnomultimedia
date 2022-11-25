class Punto {
  float x, y;
  int punto;
  Punto (float x, float y, int punto) {
    this.x = x; 
    this.y = y;
    this.punto= punto;
  }
  void dibujar () {
    push();
    textSize(14);
    textAlign(CENTER);
    text("punto: "+punto, x, y);
    pop();
  }
  //void sumarpuntos () {
  //  punto+=1;
  //}
}
