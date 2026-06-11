PImage imagenRefe;
int tam;
int cant;

/*
CONTENIDOS y pautas a evaluar:

*Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor
*Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
*Condicionales (if - else).
*Eventos (mouse y/o teclado): modificación de variables.
*Algunas funciones matemáticas: dist(), map(), random().
*Reiniciar el programa: volver variables a estado original.
*Uso de Rotate y Translate

Listo:
*Resolución de 800x400
*Ciclos FOR anidados.
*La imagen de referencia debe estar ubicada a la izquierda
*/

void setup(){
  size(800,400);
  imagenRefe = loadImage("25.jpeg");
  background(0);
  image(imagenRefe,0,0,400,400);
  cant = 8;
  tam = ((width/2) / cant);
}

void draw(){
  println(tam);
  for(int x=400; x<800; x+=tam){
    println(x);
    for(int y=0; y<cant; y++){
      rect(x,y*tam,tam,tam);
      println(x,"/",y*tam);
    }
  }
}

void crearUnNodo(){
   stroke(200);
   fill(200);
   triangle(400,0,425,0,400,25); 
   triangle(450,25,450,50,425,50); 
   fill(255);
   stroke(255);
   rect(425,0,25,25);
}
