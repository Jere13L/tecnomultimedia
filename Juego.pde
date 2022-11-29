
class Juego {
  // clases y sus respectivos objetos
  Player player;
  Player2 player2;
  Redes redes;
  Fondo fondo;
  Punto punto, punto1;
  Pelota [] pelota;
  Boton boton;
  float posX = width/2-200, posY=height/2;
  float posX1 = width/2+150, posY1=height/2;
  float posPelota = random(0, width/2);
  float posPelota2 = random( 0, 50);
  int cantPelota = 5, puntos1=0, puntos=0 ;
  int bx=width/3, by=height-150, bw=300, bh=100;
  float r= random (4, 10);
  PImage img, img1, red, hud, wl, creditos;
  int pantalla = 0;
  Juego () {
    fondo = new Fondo (0, 0);
    pelota = new Pelota [cantPelota];
    for (int i = 0; i < cantPelota; i++) {
      pelota [i] = new Pelota ( posPelota*i+r+random (40, 730), posPelota2*i+r+random (-50, 0), 50);
    }
    img = loadImage ("pj.png");
    img1 = loadImage ("pj1.png");
    red= loadImage ("red.png");
    hud= loadImage ("hud.png");
    wl= loadImage ("wl.png");
    creditos = loadImage ("creditos.jpg");
    // inicializando los objetos
    redes = new Redes(red, width/2, height/2);
    player = new Player (img, posX, posY, 65, 120);
    player2 = new Player2 (img1, posX1, posY1, 55, 110);
    boton = new Boton("Creditos", width/2, height-100, 300, 100);
  }
  void dibujar () { 
    //println(pantalla);
    if (pantalla == 0) {
      image (hud, 0, 0);
      push();
      textAlign(CENTER);
      textSize(40);
      fill(#150606);
      text("VolleyCatch", width/2, height/3-100);
      pop();
      push();
      textAlign(CENTER);
      textSize(15);
      fill(#150606);
      text("Deberan Juntar 25 pelotas que caen en la cancha \nel que las junte primero gana!!/nRecuerden intentar no cruzar la red", width/2+100, height/2-50 );
      text("PRESIONA J PARA COMENZAR", width/2, height-50);
      pop();
    } else if (pantalla == 1) {
      music.play();
      //inicializando
      punto = new Punto (35, 25, puntos);
      punto1 = new Punto (760, 25, puntos1);
      //llamando al objeto y su funcion
      fondo.dibujar () ;
      punto1.dibujar();
      punto.dibujar ();
      player.dibujar ();
      player2.dibujar ();
      redes.dibujar () ;
      player.mover();
      player2.mover2();
      for (int i = 0; i < cantPelota; i++) {
        pelota[i].dibujar ();
        pelota[i].mover () ;
        if (pelota[i].colision(player2.px, player2.py, player2.tamX, player2.tamY)) {
          puntos1 +=1;
          println(puntos1, "jugador1");
          efecto.play();
          efecto.rewind();
        }
        if (pelota[i].colision(player.px, player.py, player.tamX, player.tamY)) {         
          this.puntos +=1;
          efecto.play();
          efecto.rewind();
          println(puntos, "jugador");
        }
        if (puntos == 15) {
          pantalla = 3;
        } else if (puntos1 == 15) {
          pantalla = 2;
        }
        pelota[i].reiniciar ();
      }
    } else if (pantalla == 2) {
      // si los puntos del player llegan a 15 cambia a pantalla 2
      // Pantalla gana jugador izquierda
      music.pause();
      image (wl, 0, 0);
      push();
      fill(#150606);
      textSize (30);
      textAlign(CENTER);
      text("Ganaste", width-180, height/3-100);
      text("Perdiste", 200, height/3-100);
      boton.dibujar();
      pop();
      push();
      fill(#150606);
      textSize (14);
      textAlign(CENTER);
      text("PRESIONA C PARA VER LOS CREDITOS", width/2, 530);
      pop();
      //println(mouseX, mouseY);

      //rect (bx,by,bw,bh);
    } else if (pantalla == 3) {
      music.pause();
      //si los puntos de player 1 llegan a 15 cambia a pantalla 3
      // pantalla gana jugador derecha
      image (wl, 0, 0);
      push();
      fill(#150606);
      textSize (30);
      textAlign(CENTER);
      text("Perdiste", width-180, height/3-100);
      text("Ganaste", 200, height/3-100);
      boton.dibujar();
      pop();
      push();
      fill(#150606);
      textSize (14);
      textAlign(CENTER);
      text("PRESIONA C PARA VER LOS CREDITOS", width/2, 530);
      pop();
    } else if (pantalla == 4) {
      image (creditos, 0, 0);
      push();
      textSize(40);
      textAlign(CENTER);
      fill(#FF9100);
      text("Jeremias Nahuel Lanza, 91373/9", width/2, 100);
      text("Prof: Matias Jauregui Lorda, Com2", width/2, 140); 
      text("PRESIONA R PARA REINICIAR EL JUEGO", width/2, 400);
      pop();
      // creditos
    }
  }
  void keyPressed() {
    if (key == 'j') {
      pantalla = 1;
      println(pantalla);
    }

    if (key == 'r') {
      puntos1= 0;
      puntos= 0;
      pantalla=0;
    }
    if (key == 'c' ) {
      pantalla = 4;
    }
  }
}
