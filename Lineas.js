class Lineas  {
 constructor () {
    this.x = random(width);
    this.y = random(height);
    this.x1 = random(width);
    this.y1 = random(height);
    this.strokes = random(1,3);
 }
dibujar (){

    let b = color (0);
   fill (b);
   line(this.x,this.y,this.x1,this.y1);
   strokeWeight(this.strokes);
}
}