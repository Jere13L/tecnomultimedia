class Circulo {
  constructor (){
   this.x = random(width);
   this.y = random(height);
   this.tam= random(8,24);
  }
  dibujar(){
    push();
   let b = color (0);
   fill (b);
   ellipseMode(CENTER);
   ellipse (this.x,this.y,this.tam,this.tam); 

   pop();
  }
}