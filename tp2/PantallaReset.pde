void pantallaReset(){
    image(fondoReset, 0, 0, 640, 480);
    image(papelBTN, 390, 195, 400, 400);
    hoverReset();
    animacionReset();
    
}

boolean hoverReset(){
  if(mouseEnCoordenada(450,620,370,400)){
    textFont(fuente1);fill(75,26,25);text("Reset",512.5,402.5);
    textFont(fuente1);fill(75,26,25);text("Reset",510.5,399.5);
    textFont(fuente1);fill(213,179,126);text("Reset",510,400);
    image(libroAbiertoIcono, 323, 326, 180, 150);
    return true;
  }else{
    textFont(fuente1);fill(75,26,25);text("Reset",510,400);
    image(libroCerradoIcono, 385, 325, 125, 143);
    return false;
  }
}

void resetearSketch(){
  animando = true;
}

void animacionReset(){
   if (animando){ 
    background(0);
    tint(255, opacidad);
    image(fondoReset, 0, 0, 640, 480);
    noTint();
    if ( opacidad > 0){ opacidad = opacidad - 3;}
  }
  if (opacidad <= 0){
    animando = false;
    cambiarPantalla(1);
  }
}
