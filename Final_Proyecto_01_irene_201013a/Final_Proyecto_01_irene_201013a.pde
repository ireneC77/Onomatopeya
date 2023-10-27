//import processing.pdf.*;

PFont myfont;
String grill="miau\nmiau\nmiau";
String[] palabras = {">O", ">O", ">O", ">O", ">O"};
PVector[] posiciones = new PVector[palabras.length];
PVector[] velocidades = new PVector[palabras.length];


void setup() {
  myfont=createFont("IBMPlexMono-Light.otf", 14);
  size(420, 595);
  //beginRecord(PDF, "miau-0-entero.pdf");
  for (int i = 0; i < palabras.length; i++) {
    posiciones[i] = new PVector(random(width), random(height));
    velocidades[i] = new PVector(random(1, 4), 0);
  }
}


void draw() {
  frameRate(4);
  
  background(255);
  //randomSeed(369);
  println(mouseX);
  fill(0);
  textFont(myfont);
  textAlign(CENTER);
  text("miau", 210, 60);
  push();
  translate(300, 500);
  pop();


  push();
  translate(300, 500);
  //patetes();
  pop();


  push();
  translate(100, 100);
  //gat();
  pop();


  for (int i = 0; i < palabras.length; i++) {
    // Dibuixa la forma en la posició actual
    text(palabras[i], posiciones[i].x, posiciones[i].y);

    // Actualiza la posició de la paraula
    posiciones[i].add(velocidades[i]);

    // Revisa si la forma ha ixit de la pantalla y la reinicia
    if (posiciones[i].x > width) {
      posiciones[i].x = -textWidth(palabras[i]);
      posiciones[i].y = random(height);
      velocidades[i] = new PVector(random(1, 4), 0);
    }
  }



  for (int i=0; i<20; i=i+1) {        //Número de gatets repartits
    push();
    translate(random(width), random(height));
    gat();
    pop();
  }

  for (int i=0; i<20; i=i+1) {        //Numero de patetes repartides
    push();
    translate (random(width), random (height));
    patetes();
    pop();
  }

  for (int i=0; i<2; i=i+1) {
    grill(random (100, width-300), random (200, height-300));
  }
}
void grill (float px, float py) {
  push();
  translate(px, py);
  textLeading(random(-15, 40));
  for (int i=0; i<3; i=i+1) {
    text(grill, random(65), random(29));
  }
  pop();
  //text (grill.charAt(int(random(0, 4))), width/2-10, 50);   //texto estático cambio de letra
  //endRecord();
  //exit();
}



//noLoop();
