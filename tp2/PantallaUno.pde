void pantallaUno(){
  image(fondoInicio, 0, 0, 640, 480);
  image(logoGF, 120, 0, 385, 385);
  image(papelBTN, 320, 195, 400, 400);
  image(libroCerradoIcono, 320, 325, 125, 143);
  hoverComenzar();
  AnimacionComenzar();
}

void AnimacionComenzar(){
  
    if(animando && termino == false){
      
      image(fondoPantallaDosyTres, 0, 0, 640, 480); // fondo pantalla 2
      // desvanecer fondo
      tint(255, opacidad);
      image(fondoInicio, 0, 0, 640, 480);
      image(logoGF, 120, 0, 385, 385);
      noTint();
      
      // muevo el boton
      velocidad = velocidad + aceleracion;
      posicionXBTN = posicionXBTN + velocidad;
      if ( posicionXBTN > 320){image(papelBTN, posicionXBTN, 195, 400, 400);} else{image(papelBTN, 320, 195, 400, 400);} // dejo estatico el papel hasta que el libro "lo cubra"
      image(libroCerradoIcono, posicionXBTN, 325, 125, 143); // muevo el libro
      
      textFont(fuente1);fill(75,26,25,opacidad - 150);text("Comenzar",450,400); // desvanecer "comenzar"
    
      if ( opacidad > 0){ opacidad = opacidad - 6;}
    }
  
    if (posicionXBTN > width && opacidad <= 0){     // Boton comenzar salio de la pantalla y termino de cambiar el fondo
      termino = true;
      animando = false;
      cambiarPantalla(2);
    }
}
  
boolean hoverComenzar(){
  if(mouseEnCoordenada(450,620,370,400)){
    textFont(fuente1);fill(75,26,25);text("Comenzar",452.5,402.5);
    textFont(fuente1);fill(75,26,25);text("Comenzar",450.5,399.5);
    textFont(fuente1);fill(213,179,126);text("Comenzar",450,400);
    image(libroAbiertoIcono, 258, 326, 180, 150);
    return true;
  }else{
    image(libroCerradoIcono, 320, 325, 125, 143);
    textFont(fuente1);fill(75,26,25);text("Comenzar",450,400);
    return false;
  }
}
