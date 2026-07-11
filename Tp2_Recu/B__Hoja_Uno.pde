
void pantallaUno() {
  
  desvanecerFondo();
  mostrarLogo();
  mostrarPapel();
  mostrarPersonaje();
  
  String texto1 = "Conocí a un gnomo por primera vez cuando desperte\n" +
                  " y lo vi discutiendo sobre politica con la cabeza\n" +
                  " de oso disecada que esta sobre mi chimenea.";
                  
  String texto2= " ¡Otro se robó mis anteojos\n" +
                 " y se comió dos de mis cintas!";
                 
  if (papelY <= 0) {
    controlarContenido(fotoUno1, fotoUno2, texto1,texto2);
  }
}


void desvanecerFondo() {
  image(fondoLibro, 0, 0, 640, 480);

  tint(255, opacidadFondo);
  image(fondoInicio, 0, 0, 640, 480);
  noTint();

  if (opacidadFondo > 0) {
    opacidadFondo = opacidadFondo - 6;
  } else {
    opacidadFondo = 0;
  }
}

void mostrarLogo(){
  image(logoGF, logoX, -15, 140, 140);
  if ( logoX >= 490){logoX = logoX - 3; }
}


void mostrarPapel(){
  image(papelTexto,0,papelY,640,480);
  if ( papelY >= 0){
    papelY = papelY - 2;
  }
}

  
void mostrarPersonaje(){
  image(personaje1,personajeX,0,640,480);
  if ( personajeX >= 15){
    personajeX = personajeX - 2;
  } 
}
