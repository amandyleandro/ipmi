// imagenes
PImage fondoInicio;
PImage fondoLibro;
PImage fondoReset;
PImage logoGF;
PImage papelBTN;
PImage libroCerradoIcono;
PImage libroAbiertoIcono;
PImage papelTexto;
PImage personaje1;
PImage fotoUno1;
PImage fotoUno2;
PImage fotoDos1;
PImage fotoDos2;
PImage fotoTres1;
PImage fotoTres2;
PImage fotoCuatro1;
PImage fotoCuatro2;
PImage fotoCinco1;
PImage fotoCinco2;

// Fuentes
PFont fuente1;
PFont FuenteEscrituraLibro;


// Variables
int pantalla = 0;
int timer = 0;
int timerCambio = 300;
float opacidadFondo = 255;
float opacidadContenido = 0;
float opacidadSalida = 255;
boolean terminoAnimacion = false;
int logoX = 650;
int personajeX = 150;
int papelY = 140;

void setup(){
  size(640,480);
  fondoInicio = loadImage("fondo inicio.png");
  logoGF = loadImage("gravityfalls.png");
  papelBTN = loadImage("papel roto.png");
  libroCerradoIcono = loadImage("Libro icono.png");
  libroAbiertoIcono = loadImage("libro icono abierto.png");
  fondoLibro = loadImage("fondo libro.png");
  papelTexto = loadImage("papel textos.png");
  personaje1 = loadImage("stanley.png");
  fotoUno1 = loadImage("1-1.png");
  fotoUno2 = loadImage("1-2.png");
  fotoDos1 = loadImage("2-1.png");
  fotoDos2 = loadImage("2-2.png");
  fotoTres1 = loadImage("3-1.png");
  fotoTres2 = loadImage("3-2.png");
  fotoCuatro1 = loadImage("4-1.png");
  fotoCuatro2 = loadImage("4-2.png");
  fotoCinco1 = loadImage("5-1.png");
  fotoCinco2 = loadImage("5-2.png");
  fondoReset = loadImage("fondo reset.png");
  fuente1 = createFont("Comic Sans MS Bold Italic", 35);
  FuenteEscrituraLibro = createFont("Lucida Handwriting Italic", 14);
}

void draw (){
  if (pantalla == 0) {
    pantallaInicio();
  } 
  else if (pantalla == 1) {
    pantallaUno();
  } 
  else if (pantalla == 2) {
    contenidoFijo();
    pantallaDos();
  }
  else if (pantalla == 3) {
    contenidoFijo();
    pantallaTres();
  }
  else if (pantalla == 4) {
    contenidoFijo();
    pantallaCuatro();
  } 
  else if (pantalla == 5) {
    contenidoFijo();
    pantallaCinco();
  }
  else if (pantalla == 6) {
    pantallaReset();
  }
}


// Procesos utiles

boolean mouseEnCoordenada(int x1, int x2, int y1, int y2){
  if(mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2){return true;}
  else{return false;}
}

void mousePressed(){
  if(mouseEnCoordenada(450,620,370,400) && pantalla == 0){pantalla = 1;} // - BOTON Comenzar
}

void mouseClicked(){
  if(mouseEnCoordenada(450,620,370,400) && pantalla == 6){reiniciarTodo();} // - BOTON Reiniciar
}

void contenidoFijo(){
  image(fondoLibro, 0, 0, 640, 480);
  image(logoGF, 488, -15, 140, 140);
  image(papelTexto,0,-2,640,480);
  image(personaje1,personajeX,0,640,480);
}

void controlarContenido(PImage fotoUno, PImage fotoDos, String texto1, String texto2) {

  if (!terminoAnimacion) {
    mostrarFotos(fotoUno, fotoDos, opacidadContenido);
    mostrarTextos(texto1,texto2,opacidadContenido);
    if (opacidadContenido < 255) {
      opacidadContenido = opacidadContenido + 4;
    } else {
      opacidadContenido = 255;
      terminoAnimacion = true;
      timer = 0;
    }
    
  } else if (terminoAnimacion && timer < timerCambio) {
    mostrarFotos(fotoUno, fotoDos, 255);
    mostrarTextos(texto1,texto2,opacidadContenido);
    timer++;
  } else {
    mostrarFotos(fotoUno, fotoDos, opacidadSalida);
    mostrarTextos(texto1,texto2,opacidadSalida);
    
    if (opacidadSalida > 0) {
      opacidadSalida = opacidadSalida - 6;
    } else {
      pantalla++;
      reiniciarVariablesPantalla();
    }
  }
  
}

void mostrarFotos(PImage fotoUno, PImage fotoDos, float opacidad) {
  tint(255, opacidad);
  image(fotoUno, 0, 0, 640, 480);
  image(fotoDos, 0, 0, 640, 480);
  noTint();
}

void mostrarTextos(String texto1, String texto2, float opacidad){
  textFont(FuenteEscrituraLibro);
  fill(0, opacidad);
  
  if (timer < 180){
    text(texto1, 70, 375); 
  } else {
    text(texto2, 70, 375);
  }
}


void reiniciarVariablesPantalla() {
  timer = 0;
  opacidadContenido = 0;
  opacidadSalida = 255;
  terminoAnimacion = false;
}

void reiniciarTodo(){
  pantalla = 0;
  timer = 0;
  opacidadFondo = 255;
  opacidadContenido = 0;
  opacidadSalida = 255;
  terminoAnimacion = false;
  logoX = 650;
  personajeX = 150;
  papelY = 140;
}
