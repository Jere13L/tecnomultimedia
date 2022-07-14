// https://youtu.be/fQtdzyi9ACE
PImage fondo, ballena, paredes, inicio, boton, pared1, pared2, perdiste, ganaste, botonjugar, instrucciones, textganaste, botoncredito, creditos, reiniciar,titulo,botonreinicioganaste;
int fondox, fondoy, balX, balY, gravedad, velY, score;
//int distX[] = new int[2], distY[]= new int [2];
int[]paredX, paredY, posY, posX, tamY, tamX;
String estado, instructivo, controles,creadores,alumnos,directorejecutivo,profesor,fuentes;


void setup() {
  size(800, 600);
  fill(0);
  //declaracion de imagenes
  fondo=loadImage("fondo.jpg");
  ballena=loadImage("ballena.png");
  inicio=loadImage("inicio.png");
  paredes=loadImage("paredes.png");
  boton=loadImage("boton.png");
  pared1=loadImage("paredes.png");
  pared2=loadImage("paredes2.png");
  perdiste=loadImage("perdiste1.jpeg");
  ganaste=loadImage("ganaste.jpeg");
  botonjugar=loadImage("botonjugar.png");
  instrucciones=loadImage("instrucciones.jpeg");
  textganaste= loadImage("textganaste.png");
  botoncredito= loadImage("botoncredito.png");
  reiniciar=loadImage("reiniciar.png");
  titulo=loadImage("titulo.png");
  botonreinicioganaste= loadImage("botonreinicioganaste.png");

  estado = "iniciar";
  // textos
  instructivo = "-Deberás evitar que la ballena \ntoque los tubos \ny se caiga \n-Toca ESPACIO para nadar \n-Deberás llegar a 10 puntos para ganar" ;
  creadores= "Creadores";
  alumnos= "Luz Darino, 91317/1 \nJeremias Nahuel Lanza 91379/9";
  directorejecutivo= "Director Ejecutivo";
  profesor= "Matias Jauregui Lorda";
  fuentes="";

  balY = 50;
  balX=100;
  gravedad= 1;
  //arreglo para las paredes
  paredX= new int [5] ;
  paredY = new int [paredX.length];
  for (int i= 0; i< paredX.length; i++) {
    paredX [i] = width+200*i;
    paredY [i] = (int)random(-350, 0);
  }
  posX=new int[5];
  posY=new int[5];
  tamY=new int[5];
  tamX=new int[5];
  posX[1]=210;
  posY[1]=70;
  tamX[1]=380;
  tamY[1]=140;

  posX[2]=260;
  posY[2]=410;
  tamX[2]=280;
  tamY[2]=100;

  posX [3]=550;
  posY [3]=420;
  tamX [3]=300;
  tamY [3]=120;

  /*posX[4]=220;
   posY[4]=360;
   tamX[4]=300;
   tamY[4]=129;
   */
}

void draw() {
  //estados
  if ( estado=="iniciar" ) {
    image(inicio, 0, 0);
    miBotonRectangular();
    image(boton, 200, 60);   
    image(titulo,200,400);
    strokeWeight(4);
    stroke(255);
    line(200,445,700,445);
    // miBotonRectangular(20, 20, 30, 30);
  } else if ( estado=="instrucciones" ) {
    image(inicio, 0, 0);
    textSize(30);
    // text("INSTRUCCIONES", width/2, height/8 );
    pushStyle();
    rectMode(CENTER);
    fill(0);
    rect(width/2, 250, 400, 250);
    popStyle();
    pushStyle();
    textSize(20);
    textAlign( CENTER, CENTER );
    text (instructivo, width/2, 260);
    popStyle(); 
    fill(255);
    textSize(40);
    textAlign( CENTER, CENTER );

    miBotonRectangular1();
    //IMAGEN BOTON JUGAR
    image(botonjugar, 250, 400);
    image(instrucciones, 250, 140);
  }
  if ( estado == "jugar") {
    movFondo();
    paredes();
    ballena();
    text("Score:"+score, width-170, 40);
  } else if (estado == "Perdiste") {
    image(perdiste, 0, 0);
    image(reiniciar, 250, 350);
    //image(perdiste,0,0);
  } else if (estado=="Ganaste") {
    image(ganaste, 0, 0);
    image(textganaste, 165, 70);
    miBotonRectangular2();
    image(botoncredito, 490, 420);
  } else if (estado =="creditos") {
   
    background (#3956E3);
     image(botonreinicioganaste,260,400);
    pushMatrix();
    textAlign (CENTER, CENTER);
    textSize(50);
    text(creadores, 400, 100);
    popMatrix();
    pushMatrix();
    textAlign (CENTER, CENTER);
    textSize(30);
    text(alumnos, 400, 175);
    popMatrix();
    pushMatrix();
    textAlign (CENTER, CENTER);
    textSize(46);
    text(directorejecutivo, 400, 250);
    popMatrix();
    pushMatrix();
    textAlign (CENTER, CENTER);
    textSize(30);
    text(profesor, 400, 300);
    text("Comision 2",400,350);
    popMatrix();
    

  }
}
/*void botonReiniciar() {
 if ((mouseX> posX[4]) && (mouseX< posX[4] + tamX[4]) && (mouseY> posY[4]) && (mouseY< posY[4] + tamY[4])) {
 rect(posX[4], posY[4], tamX[4], tamY[4]);
 }
 }*/
void mousePressed() {
  if ((mouseX> posX[1]) && (mouseX< posX[1] + tamX[1]) && (mouseY> posY[1]) && (mouseY< posY[1] + tamY[1])) {
    estado="instrucciones";
  } else if ((mouseX> posX[2]) && (mouseX< posX[2] + tamX[2]) && (mouseY> posY[2]) && (mouseY< posY[2] + tamY[2])) {
    estado = "jugar";
  } else if ((mouseX> posX[3]) && (mouseX< posX[3] + tamX[3]) && (mouseY> posY[3]) && (mouseY< posY[3] + tamY[3])) {
    estado="creditos";
  } else if ((mouseX> posX[4]) && (mouseX< posX[4] + tamX[4]) && (mouseY> posY[4]) && (mouseY< posY[4] + tamY[4])) {
    estado="iniciar";
  }
  // funcion para que la ballena salte
  // velY=-15;
}
void keyPressed() {
  if (key==' ');
  velY=-15;
  //REINICIAR
  if(key=='r'){
  estado="iniciar";
  balY = 50;
  balX=100;
  gravedad= 1;
  //arreglo para las paredes
  paredX= new int [5] ;
  paredY = new int [paredX.length];
  for (int i= 0; i< paredX.length; i++) {
    paredX [i] = width+200*i;
    paredY [i] = (int)random(-350, 0);
    score=0;
  }
  }
}
//FONDO
void movFondo() {
  image(fondo, fondox, fondoy);
  image(fondo, fondox+fondo.width, fondoy);
  fondox= fondox -2;
  if ( fondox<-fondo.width) {
    fondox=0;
  }
}

void paredes() {
  for (int i= 0; i< paredX.length; i++) {
    image(pared2, paredX[i], paredY[i]);
    image(pared1, paredX[i], paredY[i]+680);
    paredX[i]-=4;
    if (paredX[i]< -200) {
      paredX[i] = width ;
    }
    //PIERDE
    if (balX > (paredX [i]-70) && balX < paredX [i]+81) 
    { 
      if (balY < paredY[i] + 300 && balY < paredY[i]+300+219) {
        estado = "Perdiste";
      } else if (balY > height-40 ) { 
        estado = "Perdiste";
      } else if (balX==paredX[i] || balX == paredX[i]) {
        score++;
      }
      if (score==10) {
        estado="Ganaste";
      }
    }
  }
}

//BALLENA
void ballena() {
  image(ballena, balX, balY);
  balY= balY + velY;
  velY= velY+ gravedad;
}

//BOTON INICIO
void  miBotonRectangular() {
  if ((mouseX> posX[1]) && (mouseX< posX[1] + tamX[1]) && (mouseY> posY[1]) && (mouseY< posY[1] + tamY[1])) {
    //rect(posX[1], posY[1], tamX[1], tamY[1]);
  }
}
void  miBotonRectangular1() {
  if ((mouseX> posX[2]) && (mouseX< posX[2] + tamX[2]) && (mouseY> posY[2]) && (mouseY< posY[2] + tamY[2])) {
    //rect(posX[2], posY[2], tamX[2], tamY[2]);
  }
}
void miBotonRectangular2() {
  if ((mouseX> posX[3]) && (mouseX< posX[3] + tamX[3]) && (mouseY> posY[3]) && (mouseY< posY[3] + tamY[3])) {
    //rect(posX[3], posY[3], tamX[3], tamY[3]);
  }
}
//BOTON INICIO
void  miBotonRectangular(float posX, float posY, float tamX, float tamY) {
  //if ((mouseX> posX) && (mouseX< posX+ tam);
 if((mouseX> posX) && (mouseX< posX + tamX) && (mouseY> posY) && (mouseY< posY+ tamY)){
   //rect(posX,posY,tamX,tamY);
 }
}
