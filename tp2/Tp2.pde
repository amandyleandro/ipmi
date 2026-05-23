PImage fondoInicio;
PImage fondoPantallaDosyTres;
PImage logoGF;
PImage papelBTN;
PImage libroCerradoIcono;
PImage libroAbiertoIcono;
PImage libroAbierto;
// hoja 1
PImage gnomoHoja1;
String parrafo1 = "  ¡Conoci a un gnomo \n  por primera vez \n  cuando desperté y lo \n  vi discutiendo sobre \n politica con la cabeza \n de oso disecada que \nesta sobré mi \nchimenea.";
String parrafo2 = "Apilan sus\n pequeños \n cuerpos y \n crean \n formas \n enor- \n mes  ";
String parrafo3 = " ¡Otro \n gnomo \n se robó mis \nanteojos y se \ncomió dos de \nmis cintas!";
// hoja 2
PImage trianguloHoja2;
PImage dosGnomos;
PImage hongos;
PImage signoDePregunta;
PImage subrayado;
PImage triangulo;
PImage tacharSigno;
String parrafo4 = "Su altura promedio es \nde 25 a 45cm";
String parrafo5 = " Varias veces han\n intentado secuestrarme miestras dormia\n para ofrecerme como tributo a su reina";
String parrafo6 = "Una vez vi a uno \n de ellos  tomar \n  un baño de ardillas. \n   Me gustaria borra esa imagen";

// pantallaReset
PImage fondoReset;

// Fuentes
PFont fuente1;
PFont fuenteGnomos;
PFont FuenteEscrituraLibro;
PFont FuenteExtraLibro;
PFont fuenteDebilidad;
PFont fuenteSecreto;

// variables
int pantalla = 1;
float velocidad = 0;
float aceleracion = 0.7;
float desaceleracion = 0.3;
float posicionXBTN = 0; // posicion x del boton comenzar
float posicionXLibro = 0; // posicion x del libro
float posicionXLibroP3 = 0; // posicion x del libro en la pantalla 3
float posicionXLibroFinal = -300;
boolean animando = false;
boolean termino = false;
float count = 0;
float timer = 0;
float opacidad = 255;
float opacidad1 = 0;  float opacidad2 = 0;  float opacidad3 = 0;  float opacidad4 = 0;  float opacidad5 = 0; float opacidad6 = 0;
boolean resolverDebilidadOculta = false;

void setup(){
  size(640,480);
  
  // imagenes
  fondoInicio = loadImage("fondo inicio.png");
  logoGF = loadImage("gravityfalls.png");
  papelBTN = loadImage("papel roto.png");
  libroCerradoIcono = loadImage("Libro icono.png");
  libroAbiertoIcono = loadImage("libro icono abierto.png");
  fondoPantallaDosyTres = loadImage("fondo libro.png");
  libroAbierto = loadImage("libro abierto.png"); 
  // hoja 1
  gnomoHoja1 = loadImage("gnomo hoja1.png");
  // hoja 2
  trianguloHoja2 = loadImage("triangulo.png");
  dosGnomos = loadImage("dosgnomos.png");
  hongos = loadImage("hongos.png");
  signoDePregunta = loadImage("signopregunta.png");
  subrayado = loadImage("subrayado.png");
  triangulo = loadImage("triangulo.png");
  tacharSigno = loadImage("tachado.png");
  // pantalla Reset
  fondoReset = loadImage("fondo reset.png");

  
  // fuentes
  fuente1 = createFont("Comic Sans MS Bold Italic", 35);
  fuenteGnomos = createFont("edosz.ttf", 65);
  fuenteDebilidad = createFont("edosz.ttf", 37);
  fuenteSecreto = createFont("edosz.ttf", 20);
  FuenteEscrituraLibro = createFont("Lucida Handwriting Italic", 12);
  FuenteExtraLibro = createFont("Segoe Script Bold", 12.5);
}

void draw (){
  if ( pantalla == 1 ){
    pantallaUno();
  } else if ( pantalla == 2 ){
    pantallaDos();
  } else if ( pantalla == 3 ){
    pantallaTres();
  } else if ( pantalla == 4 ){
    pantallaReset();
  }
}


//  ---------------------- PROCESOS ----------------------  //

void mousePressed(){
  if(mouseEnCoordenada(450,620,370,400) && pantalla == 1){animando = true; cambiarPantalla(1);} // - BOTON COMENZAR
  if(mouseEnCoordenada(450,620,370,400) && pantalla == 4){resetearSketch();} // - BOTON Reiniciar
}

boolean mouseEnCoordenada(int x1, int x2, int y1, int y2){
  if(mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2){return true;}
  else{return false;}
}

void cambiarPantalla(int numPantalla){
  pantalla = numPantalla;
  
  if ( numPantalla == 1 ){
    posicionXLibro = 640;  // posicion x del libro (fuera de la ventana)
    posicionXLibroFinal = 60;  // posicion x del libro donde quiero que este
    posicionXBTN = 320;
    velocidad = -10;
  }
  
  if ( numPantalla == 2 ){
    velocidad = 0;
    opacidad = 0;
  }
  
  if ( numPantalla == 3 ){
    velocidad = 0;
    timer = -15;
    posicionXLibroFinal = -300;  // posicion x del libro donde quiero que este
    opacidad = 0; opacidad1 = 0;  opacidad2 = 0;  opacidad3 = 0;  opacidad4 = 0;  opacidad5 = 0; opacidad6 = 0;
  }
  
  if ( numPantalla == 4 ){
    velocidad = 0;
    posicionXLibroP3 = 0;
    opacidad = 255; opacidad1 = 0;  opacidad2 = 0;  opacidad3 = 0;  opacidad4 = 0;  opacidad5 = 0; opacidad6 = 0;
    animando = false;
    termino = false;
    resolverDebilidadOculta = false;
  }
  
  
}
