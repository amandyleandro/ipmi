void pantallaTres() {
  moverLibroDerecha();
  animacionLibroPantalla3();
}


void moverLibroDerecha() {
  int posXCambioVelocidad = -180;
  aceleracion = 0.7; // Cambio la velocidad de la animacion
  if (posicionXLibroP3 > posXCambioVelocidad) {
    velocidad = velocidad + aceleracion;
  } else {
    aceleracion = 0.88; // cambio la velocidad para una animacion no tan brusca.
    velocidad = velocidad * aceleracion;
  }
  posicionXLibroP3 = posicionXLibroP3 - velocidad;

  if (posicionXLibroP3 <= posicionXLibroFinal) {
    posicionXLibroP3 = posicionXLibroFinal;
  }

  image(fondoPantallaDosyTres, 0, 0, 640, 480);
  image(libroAbierto, posicionXLibro + posicionXLibroP3, 10, 835, 515);
}

void animacionLibroPantalla3() {
  float rotacionTexto = -5;
  
  if (animando){ 
   
    if (timer >= -5){
     opacidad6 = aceleracionDeOpacidad(opacidad6);
     tint(255, opacidad6);
     image(logoGF, 465, 0, 140, 140);
     image(papelBTN, 485, 280, 250, 250);
     noTint();
     
     fill(0,opacidad6); escribirLibro(FuenteExtraLibro, CENTER, "Descubre el\n acertijo",583,400,0);
   }
    
   if (timer >= 5){
     opacidad = aceleracionDeOpacidad(opacidad);
     tint(255, opacidad);
     image(dosGnomos, 176, 75, 250, 165);
     noTint();
     
     opacidad = aceleracionDeOpacidad(opacidad);
     fill(0,opacidad);escribirLibro(fuenteDebilidad, LEFT,"DEBILIDAD:", 210,285,rotacionTexto);
   }
   
   if (timer >= 20){
     opacidad1 = aceleracionDeOpacidad(opacidad1);
     fill(0,opacidad1);escribirLibro(FuenteEscrituraLibro, LEFT,parrafo4, 173,58,rotacionTexto);
   }
   
   if (timer >= 30){
     opacidad2 = aceleracionDeOpacidad(opacidad2);
     tint(255, opacidad2);
     image(hongos, 283, 38, 220, 165);
     noTint();
     
     fill(0,opacidad2); escribirLibro(FuenteEscrituraLibro, LEFT,parrafo6, 250,365,rotacionTexto); 
   }
   
   if (timer >= 50){
     opacidad3 = aceleracionDeOpacidad(opacidad3);
     tint(255, opacidad3);
     image(triangulo, 193, 325, 180, 115);
     noTint();
     
     fill(180,0,0,opacidad3); escribirLibro(FuenteExtraLibro, CENTER, "¡¡SOMBREROS\nPUNTIAGUDOS!!",422,343,-7);
   }
   
   if (timer >= 70){
     opacidad4 = aceleracionDeOpacidad(opacidad4);
     tint(255, opacidad4);
     image(subrayado, 200, 220, 250, 200);
     noTint();
   }
   
   if (timer >= 95){
     opacidad5 = aceleracionDeOpacidad(opacidad5);
     tint(255, opacidad5);
     image(signoDePregunta, 380, 240, 110, 75);
     noTint();
     
     fill(180,0,0,opacidad3); escribirLibro(FuenteExtraLibro, CENTER, "Barbas sin",232,182,-7);
     fill(180,0,0,opacidad3); escribirLibro(FuenteExtraLibro, CENTER, "rasurar",232,193,-7);
     fill(0,opacidad5); escribirLibro(FuenteEscrituraLibro, LEFT,parrafo5, 180,215, rotacionTexto);
   }
   
   timer++;
   
   if (opacidad5 >= 255 && timer >= 900){                                      
        cambiarPantalla(4);
        timer = 0;
      }
   
   
   // ELEMENTOS DE LA HOJA 1
   image(gnomoHoja1, 260 + posicionXLibroP3, 165, 228, 254);
   fill(0); escribirLibro(fuenteGnomos, LEFT,"GNOMOS", 215 + posicionXLibroP3,130,-9);          // titulo "gnomos"
   fill(0); escribirLibro(FuenteEscrituraLibro, LEFT, parrafo1, 185 + posicionXLibroP3,169,-9);  // parrafo 1
   fill(180,0,0); escribirLibro(FuenteExtraLibro, CENTER, "PELIGRO \nDESCONOCIDO!",388 + posicionXLibroP3,132,-9);          // Peligro desconocido
   fill(0); escribirLibro(FuenteEscrituraLibro, RIGHT, parrafo2, 460 + posicionXLibroP3,158,-9);      // parrafo 2
   fill(0); escribirLibro(FuenteEscrituraLibro, LEFT, parrafo3, 197 + posicionXLibroP3,333,-9);  // parrafo 3
  }
  
  if(resolverDebilidadOculta){
    fill(90,45,155); escribirLibro(fuenteSecreto, LEFT, "La barredora de hojas", 199,313,rotacionTexto);  // debilidad descubierta
    image(tacharSigno, 380, 240, 110, 75);
  }
}
void mouseClicked(){
  if(pantalla == 3){
    if (mouseEnCoordenada(177,291,129,162) || mouseEnCoordenada(214,252,326,423))
      resolverDebilidadOculta = true; // - BOTON oculto para Resolver la debilidad oculta
  }
}
