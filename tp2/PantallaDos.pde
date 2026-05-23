void pantallaDos(){
  if(animando == false){ 
    animando = true;
    termino = false;
  }
  animacionLibroPantalla2();
  animacionHoja1();
    
}

void animacionLibroPantalla2(){
    int posXCambioVelocidad = 152;
    aceleracion = 0.3; // Cambio la velocidad de la animacion

    if (posicionXLibro != 60){
      
      if (posicionXLibro > posXCambioVelocidad){ 
        velocidad = velocidad + aceleracion;
      } else {
        aceleracion = 0.88; // cambio la velocidad para una animacion no tan brusca.
        velocidad = velocidad * aceleracion;
      }
      posicionXLibro = posicionXLibro - velocidad;
    }
    
    if (posicionXLibro < 60){ // si el libro llega a posicion, Detener animacion.
      posicionXLibro = 60;
    } 
  
    image(fondoPantallaDosyTres, 0, 0, 640, 480);
    image(libroAbierto, posicionXLibro, 10, 835, 515);
} 


void animacionHoja1(){
    float rotacionTexto = -9;
    
    if (posicionXLibro == 60){
      image(logoGF, 16, 355, 140, 140);
      
      if (timer >= 5){
        opacidad = aceleracionDeOpacidad(opacidad);
        tint(255, opacidad);
        image(gnomoHoja1, 260, 165, 228, 254);
        noTint();
      }
      
      if (timer >= 20){
        opacidad1 = aceleracionDeOpacidad(opacidad1);
        fill(0,opacidad1); escribirLibro(fuenteGnomos, LEFT,"GNOMOS", 215,130,rotacionTexto);          // titulo "gnomos"
      }
      if (timer >= 45){
        opacidad2 = aceleracionDeOpacidad(opacidad2);
        fill(0,opacidad2); escribirLibro(FuenteEscrituraLibro, LEFT, parrafo1, 185,169,rotacionTexto);  // parrafo 1
      }
      if (timer >= 115){
        opacidad3 = aceleracionDeOpacidad(opacidad3);
        fill(180,0,0,opacidad3); escribirLibro(FuenteExtraLibro, CENTER, "PELIGRO \nDESCONOCIDO!",388,132,rotacionTexto);          // Peligro desconocido
      }
      if (timer >= 85){
        opacidad4 = aceleracionDeOpacidad(opacidad4);
        fill(0,opacidad4); escribirLibro(FuenteEscrituraLibro, RIGHT, parrafo2, 460,158,rotacionTexto);      // parrafo 2
      }
      if (timer >= 120){
        opacidad5 = aceleracionDeOpacidad(opacidad5);
        fill(0,opacidad5); escribirLibro(FuenteEscrituraLibro, LEFT, parrafo3, 197,333,rotacionTexto);  // parrafo 3
      }
      timer++;
      
      
      if (opacidad5 >= 255 && timer >= 900){
        cambiarPantalla(3);
      }
    }
}


float aceleracionDeOpacidad(float opacidad){
  if (opacidad >= 255){
    return 255;
  } else if (opacidad >= 170){ 
    return opacidad + 8;  // Acelero la opacidad un poco mas
  }  else if (opacidad >= 85){
    return opacidad + 4;  // Acelero la opacidad un poco
  } else{
    return opacidad + 1; // Arranca lento 
  }
}

void escribirLibro(PFont fuente, int orientacion, String parrafo, float x, float y, float rotacion){
  textFont(fuente);
  textAlign(orientacion);
  pushMatrix();
  translate(x,y);
  rotate(radians(rotacion));
  text(parrafo,0,0);
  popMatrix(); 
  textAlign(LEFT);
}
      
      
      
