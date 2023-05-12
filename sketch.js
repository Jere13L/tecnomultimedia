    
    let arreglo = [];
    let arreglo2= [];
    function setup() {
    createCanvas(windowWidth,windowHeight);
    for(let i=0;i<15;i++ ){
    arreglo.push(new Circulo());
    }
    for(let i=0;i<150;i++ ){
      arreglo2.push(new Lineas());
      }
  } 
  function draw() {
    background (244);
   for(let i=0; i<15;i++){
    arreglo[i].dibujar();
   }  
   for(let i=0; i<150;i++){
    arreglo2[i].dibujar();  
   }  
   
  }
