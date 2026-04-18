PImage ImagenRefe;

void setup(){
  size(800,400);
  ImagenRefe = loadImage("ImagenRefe.jpg");
}

void draw (){  
  background(160);
 image(ImagenRefe, 0, 0, 400, 400);
  
  // -------------------- ESCUDO --------------------
  stroke(50); strokeWeight(1); 
  fill(180);
  ellipse(670,299, 230, 295);
  fill(85);
  ellipse(670,299, 190, 255);
  
  // -------------------- BRAZO IZQ --------------------
  stroke(80); strokeWeight(0.5);
  fill(147);
  beginShape();
  vertex(423,400);
  vertex(428,321);
  vertex(440,278);
  vertex(453,366);
  vertex(449,400);
  endShape();

  fill(150);
  beginShape();
  vertex(440,278);
  vertex(453,366);
  vertex(469,309);
  vertex(515,279);
  vertex(544,250);
  vertex(565,206);
  vertex(546,189);
  vertex(528,190);
  vertex(506,214);
  vertex(502,224);
  vertex(474,242);
  vertex(440,278);
  endShape();
  
  // -------------------- BRAZO DER -------------------- 
  fill(150);
  beginShape();
  vertex(598,220);
  vertex(590,287);
  vertex(650,345);
  vertex(661,340);
  vertex(716,300);
  vertex(731,290);
  vertex(750,278);
  vertex(737,245);
  vertex(715,257);
  vertex(706,274);
  vertex(655,299);
  vertex(645,284);
  vertex(631,268);
  vertex(626,243);
  vertex(616,226);
  vertex(598,220);
  endShape(); 
  // ------- AGARRE ESCUDO -------
  stroke(50); strokeWeight(1);
  fill(85);
  beginShape();
  vertex(652,287);
  vertex(676,282);
  vertex(691,311);
  vertex(688,340);
  vertex(666,350);
  vertex(656,325);
  vertex(652,287);
  endShape();
  
  // -------------------- TORZO --------------------
  stroke(80); strokeWeight(0.5);
  fill(130);
  beginShape();
  vertex(515,279);
  vertex(535,366);
  vertex(535,385);
  vertex(528,399);
  vertex(607,399);
  vertex(608,363);
  vertex(615,312);
  vertex(621,294);
  vertex(615,263);
  vertex(598,220);
  vertex(592,230);
  vertex(565,206);
  vertex(544,250);
  vertex(515,279);
  endShape();
  
  // -------------------- CUELLO -------------------- 
  stroke(100); strokeWeight(1);
  fill(130);
  beginShape();
  vertex(598,220);
  vertex(592,230);
  vertex(546,189);
  vertex(567,126);
  vertex(596,190);
  vertex(589,214);
  vertex(598,220);
  endShape();
  
  // -------------------- ROSTRO + BARBA --------------------
  fill(125);
  beginShape();
  vertex(614,213);
  vertex(592,208);
  vertex(576,188);
  vertex(569,147);
  vertex(602,120);
  vertex(614,149); // NARIZ
  vertex(613,158);
  vertex(608,157);
  vertex(614,213);
  endShape(); 
  // ------- OJO -------
  stroke(0); strokeWeight(1);
  fill(80);
  triangle(592,140,600,134,600,144);
  
  // -------------------- CASCO --------------------
  stroke(50); strokeWeight(1);
  // ------- FIGURA FUERA -------
  fill(200);
  beginShape();
  vertex(508,210);
  vertex(497,145);
  bezierVertex(485,5, 597,-35, 640,68);
  vertex(611,81);
  vertex(530,185);
  vertex(508,210);
  endShape();
  // ------- FIGURA DEL MEDIO -------
  fill(150);
  beginShape();
  vertex(530,185);
  bezierVertex(495,69, 580,30, 611,81);
  vertex(602,101);
  vertex(550,165);
  vertex(530,185);
  endShape();
  fill(150);
  ellipse(550,85, 30, 40); // DETALLE
  // ------- FIGURA INTERIOR -------
  fill(110);
  beginShape();
  vertex(542,160);
  bezierVertex(510,109, 566,37, 602,101);
  vertex(542,160);
  endShape();
  // ------- FIGURA INTERIOR ABAJO -------
  fill(110);
  beginShape();
  vertex(542,160);
  vertex(602,101);
  vertex(616,148);
  vertex(613,152);
  vertex(610,148);
  vertex(602,125);
  vertex(570,150);
  bezierVertex(570,160, 558,180,544,182);
  vertex(542,160);
  endShape();
  
}
