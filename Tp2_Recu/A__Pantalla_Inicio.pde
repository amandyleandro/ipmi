void pantallaInicio(){
  image(fondoInicio, 0, 0, 640, 480);
  image(logoGF, 120, -15, 385, 385);
  image(papelBTN, 320, 195, 400, 400);
  image(libroCerradoIcono, 320, 325, 125, 143);
  textFont(fuente1);fill(75,26,25);text("Comenzar",450,400);
  hoverComenzar();
  
}

void hoverComenzar(){
  if(mouseEnCoordenada(450,620,370,400)){
    textFont(fuente1);fill(75,26,25);text("Comenzar",452.5,402.5);
    textFont(fuente1);fill(75,26,25);text("Comenzar",450.5,399.5);
    textFont(fuente1);fill(213,179,126);text("Comenzar",450,400);
    image(libroAbiertoIcono, 258, 326, 180, 150);
  }else{
    image(libroCerradoIcono, 320, 325, 125, 143);
    textFont(fuente1);fill(75,26,25);text("Comenzar",450,400);
  }
}
