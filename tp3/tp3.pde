PImage imagenRefe;
int tam;
int cant;

int nodoClickX;
int nodoClickY;
int contClick = 0;

float rotacion = 0;

//https://youtu.be/X82GmUiaadw

void setup(){
  size(800,400);
  imagenRefe = loadImage("25.jpeg");
  image(imagenRefe,0,0,400,400);
  cant = 8;
  tam = ((width/2) / cant);

}

void draw(){
  for(int x=width/2; x<width; x+=tam){
    for(int y=0; y<height; y+=tam){
      crearNodo(x,y);
    }
  }
}

void mousePressed(){
  
  if(mouseX >= 400){ // ESTOY DENTRO DE MI GRILLA?
    
    int columna = (mouseX - 400)/tam; // tam=50;
    int fila = (mouseY /tam);

    nodoClickX= 400 + columna * tam;
    nodoClickY= fila * tam;
    
    if (contClick == 4 || contClick >= 99){ // 99 = precione la letra R (color random)
      contClick = 1;
    } else {
      contClick ++;
    }
    
    rotacion = calculoRotacion();
    
  }
}

float calculoRotacion(){
  // angulos No se manejan en grados(0,359) --> radianes (0, 2*PI)
  if(contClick == 1){
    return radians(90);
  } else if (contClick == 2){
    return radians(180);
  } else if (contClick == 3){
    return radians(270);
  } else if (contClick == 4){
    return radians(360);
  } else {
    return radians(0);  
  }
}

void calculoColorRec(float centroX, float centroY){
  float distancia = dist(mouseX,mouseY, centroX,centroY);
  float intencidad = map(distancia,0,120,255,120);
  
  if(contClick == 1){
    fill(255,0,intencidad);
  } else if (contClick == 2){
    fill(intencidad,0,255);
  } else if (contClick == 3){
    fill(0,255,intencidad);
  } else if (contClick == 99){
    fill(sinColor(intencidad));
  }else {
    fill(0,intencidad,255);
  }
}

color sinColor(float intencidad){
  return color(intencidad);
}


void crearNodo(int x, int y){
   float mitad = tam / 2;
   float centroX = x+mitad;
   float centroY = y+mitad;
  
   pushMatrix();
   translate(centroX,centroY);
   
   // SI ES EL NODO DONDE HICE CLICK -> CAMBIO ORIENTACION DEL NODO
   if (x == nodoClickX && y == nodoClickY){
     rotate(rotacion);
   }
   
   noStroke();
   fill(0); rect(-mitad,-mitad, tam,tam); // FONDO
   
   fill(200);
   triangle( -mitad,-mitad, 0,-mitad, -mitad,0 ); // TRIANGULO SUPERIOR IZQ
   triangle( mitad,0, mitad,mitad, 0,mitad ); // TRIANGULO INFERIOR DER
   
   calculoColorRec(centroX,centroY);
   rect(0,-mitad, mitad,mitad); // RECTANGULO
   
   popMatrix(); 
}

void keyPressed(){ 
  if ( key == ' ' ){
    nodoClickX= 0;
    nodoClickY= 0;
    contClick = 0;
  }
  if ( key == 's' ){
    contClick = 99;
  }
}
