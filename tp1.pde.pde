// para que empiece la musica tocar cualquier tecla.
String a,b,c,d,e,f,g,h,i,j,k,l,m ;
PImage fondo,naga,pabu ;
PFont Fuente1 ;
//sonido
import ddf.minim.*;
Minim minim ;
AudioSample sound ;
// \
void setup () {
size (600,300); 
textAlign (CENTER) ;
background (155) ;
//sonido
minim = new Minim (this) ; 
sound = minim.loadSample ("korra13.mp3",512); 
//fuentes
Fuente1= loadFont ("MVBoli-26.vlw") ;
m = "Korra  Janet Varney \nMako  David Faustino \nBolin  P.J. Byrne \nTenzin   J.K. Simmons \nAmon  Steve Blum" ;
l = "Starring" ;
k = "THE TRAK TEAM \nJeremy Zuckerman \nBenjamin Wynn" ;
j = "Music and Sound Desing" ;
i = "Producer" ;
h = "Tim YOON" ;
g = "Supervising Producer" ;
f = "Co-executive Producers" ;
e = "Executive producers" ;
a = "Written By" ;
b = "Directed By" ;
c = "Michael Dante Dimartino \nBryan Konietzko" ;
d = "Joaquim Dos Santos \nKi Hyun Ryu" ;
fondo = loadImage ("korra.jpg") ;
pabu = loadImage ("pabu.jpg");
}
void draw () {
image (fondo,0,0) ;
println (mouseX, mouseY);
// mouse
image (pabu,mouseX, mouseY);
// Primera pantalla
if ( frameCount <=660) { 
textFont (Fuente1) ;
text (a,300,50) ;
text (c,300,75);
text (b,300,150);
text (d,300,175);
}
// segunda pantalla 
if (660 < frameCount && frameCount <860) {
textFont (Fuente1); 
text (e,300,50);
text (c,300,75);
}
//tercera pantalla
if (860 < frameCount && frameCount < 1060) {
textFont (Fuente1) ;
text (f,300,50) ;
text ("Joaquim Dos Santos", 300, 75) ;  
}
//cuarta pantalla
if (1060 < frameCount && frameCount <1260) {
textFont (Fuente1) ;
text (g,300,50);
text ("Ki Hyun Ryu",300,75) ;  
}
//quinta pantalla
if (1260 < frameCount && frameCount < 1460) {
textFont (Fuente1);
text (i,300,50); 
text (h,300,75);   
}
// sexta pantalla 
if (1460 < frameCount && frameCount < 1660 ){
textFont (Fuente1) ;
text (j,300,50); 
text (k,300,75);
}
// SEPTIMA PANTALLA
if (1660 < frameCount && frameCount < 1860) {
textFont (Fuente1) ;
text (l,300,50) ;
text (m,300,75) ;
}
}
void keyPressed () {
  sound.trigger() ;
}
