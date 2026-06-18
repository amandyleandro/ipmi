PImage imagenRefe;
int tam;
int cant;

int nodoX;
int nodoY;
int colorTriengulosNodo;

int rotacion = 0;



/*
CONTENIDOS y pautas a evaluar:

*Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
*Reiniciar el programa: volver variables a estado original.

Listo:
*Resolución de 800x400
*Ciclos FOR anidados.
*Eventos (mouse y/o teclado): modificación de variables.
*La imagen de referencia debe estar ubicada a la izquierda
*Condicionales (if - else).
*Algunas funciones matemáticas: dist(), map(), random().
*Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor
*Uso de Rotate y Translate
*/

void setup(){
  size(800,400);
  imagenRefe = loadImage("25.jpeg");
  image(imagenRefe,0,0,400,400);
  cant = 8;
  tam = ((width/2) / cant);

}

void draw(){
  for(int x=400; x<width; x+=tam){
    for(int y=0; y<cant; y++){
      crearNodo(x,y*tam,tam); 
    }
  }
}

void mousePressed(){
  if(mouseX >= 400){ // ESTOY DENTRO DE MI GRILLA?
    
    nodoX= 400 + ((mouseX - 400)/tam) * tam;
    nodoY= (mouseY / tam) * tam;
    
    rotacion++;
    
    colorTriengulosNodo = color(
    random(120,255),
    random(80,180),
    random(80,180)
    );
  }
}


void crearNodo(int x, int y, int tamanio){
   float mitad = tamanio / 2;
   float centroX = x+mitad;
   float centroY = y+mitad;
   float d = dist(mouseX,mouseY, centroX,centroY);
   
   float coloroTonoClaro = map(d,0,120,255,120);
   //float colorTonoOscuro = coloroTonoClaro - 60;
   
   
   pushMatrix();
   translate(centroX,centroY);
   
   // CAMBIO ORIENTACION DEL NODO?
   if (x == nodoX && y == nodoY){
     rotate(rotacion * HALF_PI);
   }
   
   noStroke();
   fill(0); rect(-mitad,-mitad, tamanio,tamanio); // FONDO
   
   // CAMBIO COLOR DEL NODO?
   if(x == nodoX && y == nodoY){
     fill(colorTriengulosNodo);
   } else {
     fill(200);
   }
   triangle( -mitad,-mitad, 0,-mitad, -mitad,0 ); // TRIANGULO SUPERIOR IZQ
   triangle( mitad,0, mitad,mitad, 0,mitad ); // TRIANGULO INFERIOR DER
   
   
   fill(0,coloroTonoClaro,250); rect(0,-mitad, mitad,mitad); // RECTANGULO
   
   
   popMatrix();
}
