PFont fuente;
PImage cuadro, cielo, titulo, pasto, casa, edificios, tele, teleb, cocina, cocina2, cacerola, frasco, frascob, csp, pum, abuela; 
int linea1, linea2, linea3;
String estado = "inicio";
int subir = 220;
float arriba, abajo;
float cacerolaX =344;
int contador = 0;

void setup() {
  fuente = createFont("FreePixel.ttf", 50);
  textFont(fuente);
  cuadro = loadImage("cuadro.png");
  cielo = loadImage("fondo.png");
  titulo = loadImage("titulo.png");
  pasto = loadImage("pastito3.png");
  casa = loadImage("casa.png");
  tele = loadImage("tele.png");
  teleb = loadImage("teleb.png");
  cocina = loadImage("cocina1.png");
  cocina2 = loadImage("cocinarota.png");
  cacerola = loadImage("cacerola1.png");
  frasco = loadImage("frasco1.png");
  frascob = loadImage("frascobrillo.png");
  csp = loadImage("sopaSuperpoderosa.png");
  abuela = loadImage("abuela1.png");
  pum = loadImage("pum1.png");
  size(800, 600);
  noStroke();
  imageMode(CENTER);
  rectMode(CORNERS);
  smooth(0);
}

void draw() {
  if (estado.equals("inicio")) {
    subir = 220;
    linea1 = 80;
    linea2 = 80;
    linea3 = 80;
    arriba = -150;
    abajo = 750;
    image(cielo, width/2, height/2, 800, 600);
    image(titulo, width/2, height/2-80, 195*2, 92*2);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(35);
    text("Presiona [ENTER] para empezar", width/2, height/2+80);
    textSize(25);
    text("© 2020 - Ezequiel Ríos", width/2, height-25);

    if (keyPressed) {
      if (key == ENTER)
      {
        estado = "transicion";
      }
    }
  } else if (estado.equals("transicion")) {
    image(cielo, width/2, height/2, 800, 600);
    if (subir > -160)subir = subir-5;
    image(titulo, width/2, subir, 195*2, 92*2);
    image(pasto, width/2, subir+470, 800, 600);
    image(casa, width/2, subir+650, 148, 124);
    if (subir == -160) {
      estado = "presentacion1";
    }
  } else if (estado.equals("presentacion1")) {
    image(pasto, width/2, subir+470, 800, 600);
    image(casa, width/2, subir+650, 148, 124);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FFF36C);
    text("Es 24 de Diciembre, te ofresiste para preparar la\ntradicional sopa navideña y faltan pocas horas\npara la celebracion en la casa de tu abuela.", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed) {
        if (key == ' ') {
          estado = "presentacion2";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  } else if (estado.equals("presentacion2")) {
    image(pasto, width/2, subir+470, 800, 600);
    image(casa, width/2, subir+650, 148, 124);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FFF36C);
    text("El problema es que nunca preparaste la sopa en tu\nvida. Por suerte el programa especial navideño de\nCrónica del año pasado esta por empezar.", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "tele1";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado.equals("tele1")) {
    float ceroUno = round(frameCount*0.05%1);
    float parpadeo = map(ceroUno, 0, 1, 0, 255);
    image(tele, width/2, height/2, 800, 600);
    tint(255, parpadeo);
    image(teleb, width/2, height/2, 800, 600);

    tint (255, 255);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#AAE8F7);
    text("«Para la receta de hoy vamos a precisar una papa, \ndos cebollas grandes cortadas en juliana, tres\nsardinas, 1 lata de arvejas, queso azul...»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "tele2";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado.equals("tele2")) {
    float ceroUno = round(frameCount*0.05%1);
    float parpadeo = map(ceroUno, 0, 1, 0, 255);
    image(tele, width/2, height/2, 800, 600);
    tint(255, parpadeo);
    image(teleb, width/2, height/2, 800, 600);

    tint (255, 255);
    rectMode(CENTER);
    fill(0);
    if (arriba < 150) {
      arriba = arriba +0.5;
    }
    if (abajo > 450) {
      abajo = abajo -0.5;
    }
    rect(width/2, arriba, width, height/2);
    rect(width/2, abajo, width, height/2);



    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#AAE8F7);
    text("«... un control remoto, dos elefantes, \ncuatro atados de acelga, jabón de tocador,\nun disco de abba...»", 80, 80);



    rectMode(CORNERS);

    if (linea1 < 720) {
      linea1=linea1+ 5;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 2;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 2;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "tele3";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
          arriba = 150;
          abajo = 450;
        }
      }
    }
  }
  if (estado.equals("tele3")) {
    float ceroUno = round(frameCount*0.05%1);
    float parpadeo = map(ceroUno, 0, 1, 0, 255);
    image(tele, width/2, height/2, 800, 600);
    tint(255, parpadeo);
    image(teleb, width/2, height/2, 800, 600);

    tint (255, 255);

    rectMode(CENTER);
    fill(0);
    if (arriba > -150) {
      arriba = arriba -50;
    }
    if (abajo < 750) {
      abajo = abajo +50;
    }
    rect(width/2, arriba, width, height/2);
    rect(width/2, abajo, width, height/2);

    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FF585A);
    text("«...FALTAN 172 DÍAS PARA EL INVIERNO»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 20;
    }


    fill(0);
    rectMode(CORNERS);
    rect(linea1, 40, 720, 85);

    if (linea1==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "tele4";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado.equals("tele4")) {
    float ceroUno = round(frameCount*0.05%1);
    float parpadeo = map(ceroUno, 0, 1, 0, 255);
    image(tele, width/2, height/2, 800, 600);
    tint(255, parpadeo);
    image(teleb, width/2, height/2, 800, 600);

    tint (255, 255);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(255);
    text("«¡ME QUEDÉ DORMIDO!»\n«Me perdí la receta y se hizo tarde...»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }

    fill(0);
    rect(linea2, 85, 720, 125);

    if (linea2==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "cocina1";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado.equals("cocina1")) {
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, cacerolaX, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#C13537);
    image(frasco, width/2-150, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);

    tint (255, 255);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(255);
    text("«Voy a tener que improvisar la sopa...»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }

    fill(0);
    rect(linea1, 40, 720, 85);

    if (linea1==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(200);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "cocina2";
          linea1 = 80;
          linea2 = 80;
        }
      }
    }
  }

  if (estado.equals("cocina2")) {
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, cacerolaX, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#C13537);
    image(frasco, width/2-150, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);

    textAlign(BOTTOM, LEFT);

    tint (255, 255);
    if (mouseX>=375 && mouseX<=420 && mouseY>= 155 && mouseY<=225) {
      fill(0, 100);
      rect(mouseX-5, mouseY+10, mouseX+305, mouseY-25);
      image(frascob, width/2, 190, 72, 95);
      image(frascob, width/2, 190, 72, 95);
      textAlign(BOTTOM, LEFT);
      textSize(25);
      fill(255);
      text("[CLIC]Especia Importada", mouseX, mouseY);
      if (mousePressed) {
        estado="godzilla";
        linea1 = 80;
        linea2 = 80;
        contador = 0;
      }
    }
    if (mouseX>=225 && mouseX<=270 && mouseY>= 155 && mouseY<=225) {
      fill(0, 100);
      rect(mouseX-5, mouseY+10, mouseX+305, mouseY-25);
      image(frascob, width/2-150, 190, 72, 95);
      image(frascob, width/2-150, 190, 72, 95);
      textAlign(BOTTOM, LEFT);
      textSize(25);
      fill(255);
      text("[CLIC]Salsa de habanero", mouseX, mouseY);
      if (mousePressed) {
        estado="pum";
        linea1 = 80;
        linea2 = 80;
        contador = 0;
      }
    }
    if (mouseX>=525 && mouseX<=570 && mouseY>= 155 && mouseY<=225) {
      fill(0, 100);
      rect(mouseX, mouseY+5, mouseX-310, mouseY-30);
      image(frascob, width/2+150, 190, 72, 95);
      image(frascob, width/2+150, 190, 72, 95);
      textAlign(RIGHT, BOTTOM);
      textSize(25);
      fill(255);
      text("[CLIC]Líquido Misterioso", mouseX, mouseY);
      if (mousePressed) {
        estado="CSP";
        linea1 = 80;
        linea2 = 80;
        contador = 0;
      }
    }
    if (mouseX>=285 && mouseX<=400 && mouseY>= 350 && mouseY<=450) {
      fill(0, 100);
      rect(mouseX-5, mouseY+10, mouseX+200, mouseY-25);
      textAlign(BOTTOM, LEFT);
      textSize(25);
      fill(255);
      text("Sopa Incompleta", mouseX, mouseY);
    }
  }

  if (estado == "godzilla") {
    float ceroUno = round(frameCount*0.1%1);
    float mov = map(ceroUno, 0, 1, -2, 2);
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, cacerolaX + mov, 400, 140, 96);
    tint(#3FCE36);
    image(frasco, width/2-150, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);
    tint(255);
    if (contador < 100)contador=contador+1;
    fill(255, contador*3);
    rect(0, 0, 800, 600);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FFF36C);
    text("Agregaste la especia importada a la sopa.\n¡La sopa está reaccionando!", 80, 80);
    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    if (linea2==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "godzilla2";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
          contador = 0;
        }
      }
    }
  }
  if (estado.equals("godzilla2")) {
    image(cocina, width/2, height/2, 800, 600);
    tint(#516595);
    image(cocina2, width/2, height/2, 800, 600);
    tint(#3FCE36);
    image(frasco, width/2-150, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);
    tint(255);
    if (contador < 100)contador=contador+1;

    if (contador == 100) {
      image(cuadro, width/2, 118, 720, 176);
      textAlign(TOP, LEFT);
      textSize(25);
      textLeading(35);
      fill(255);
      text("«¿Godzilla salió de mi cacerola?»", 80, 80);
      if (linea1 < 720) {
        linea1=linea1+ 10;
      }
      if (linea1 == 720) {
        if (linea2 < 720) {
          linea2=linea2+ 10;
        }
      }
      if (linea2 == 720) {
        if (linea3 < 720) {
          linea3=linea3+ 10;
        }
      }

      fill(0);
      rect(linea1, 40, 720, 85);
      if (linea1==720) {
        textSize(25);
        textAlign(BOTTOM, RIGHT);
        fill(0);
        text("[ESPACIO] para continuar", width-325, height-18);
        fill(200);
        text("[ESPACIO] para continuar", width-325, height-20);


        if (keyPressed)
        {
          if (key == ' ') {
            estado = "godzilla3";
            linea1 = 80;
            linea2 = 80;
            linea3 = 80;
          }
        }
      }
    }
  }
  if (estado.equals("godzilla3")) {
    float ceroUno = round(frameCount*0.05%1);
    float parpadeo = map(ceroUno, 0, 1, 0, 255);
    image(tele, width/2, height/2, 800, 600);
    tint(255, parpadeo);
    image(teleb, width/2, height/2, 800, 600);

    tint (255, 255);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FF585A);
    text("«ÚLTIMO MOMENTO»\n«Un godzilla con un piluso de Boca está atacando\nel McDonald's del Obelisco»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "godzilla4";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }
  if (estado.equals("godzilla4")) {
    image(cocina, width/2, height/2, 800, 600);
    tint(#516595);
    image(cocina2, width/2, height/2, 800, 600);
    tint(#3FCE36);
    image(frasco, width/2-150, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);
    tint(255);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(225);
    text("«Ya casi es hora de la cena y no tengo sopa,\nvoy a comprar un budín en el camino...»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);

    if (linea2==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "godzillaAbuela";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }
  if (estado.equals("godzillaAbuela")) {
    tint(#516595);
    image(cielo, width/2, height/2, 800, 600);
    image(pasto, width/2, height/2, 800, 600);
    tint (255);

    image(abuela, 600, 500, 200, 400);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#ADF770);
    text("«Sabía que no ibas a poder hacer la sopa, así\nque anoche preparé una por las dudas.\n¡Gracias por traer budín!.»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "continuar1";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado.equals("CSP")) {
    float ceroUno = round(frameCount*0.1%1);
    float mov = map(ceroUno, 0, 1, -2, 2);
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, cacerolaX + mov, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2-150, 190, 40, 60);
    tint(255);
    if (contador < 100)contador=contador+1;
    fill(#FF5DB4, contador*3);
    rect(0, 0, 800, 600);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FFF36C);
    text("Agregaste el liquido misterioso a la sopa.\n¡La sopa está reaccionando!", 80, 80);
    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    if (linea2==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "CSP2";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
          contador = 0;
        }
      }
    }
  }
  if (estado.equals("CSP2")) {
    float ceroUno = round(frameCount*0.025%1);
    float mov = map(ceroUno, 0, 1, -10, 10);
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, width/2, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2-150, 190, 40, 60);
    tint(255);
    tint(255);
    image(csp, width/2, height/2-40+mov, 400, 224);
    if (contador < 150)contador=contador+1;

    if (contador == 150) {
      image(cuadro, width/2, 118, 720, 176);
      textAlign(TOP, LEFT);
      textSize(25);
      textLeading(35);
      fill(255);
      text("«¡Accidentalmente agregé la Sustancia X\na mi sopa!»", 80, 80);
      if (linea1 < 720) {
        linea1=linea1+ 10;
      }
      if (linea1 == 720) {
        if (linea2 < 720) {
          linea2=linea2+ 10;
        }
      }
      fill(0);
      rect(linea1, 40, 720, 85);
      rect(linea2, 85, 720, 125);
      if (linea2==720) {
        textSize(25);
        textAlign(BOTTOM, RIGHT);
        fill(0);
        text("[ESPACIO] para continuar", width-325, height-18);
        fill(200);
        text("[ESPACIO] para continuar", width-325, height-20);


        if (keyPressed)
        {
          if (key == ' ') {
            estado = "CSP3";
            linea1 = 80;
            linea2 = 80;
            linea3 = 80;
          }
        }
      }
    }
  }
  if (estado.equals("CSP3")) {
    float ceroUno = round(frameCount*0.025%1);
    float mov = map(ceroUno, 0, 1, -10, 10);
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, width/2, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2-150, 190, 40, 60);
    tint(255);
    tint(255);
    image(csp, width/2, height/2-40+mov, 400, 224);
    if (contador < 150)contador=contador+1;

    if (contador == 150) {
      image(cuadro, width/2, 118, 720, 176);
      textAlign(TOP, LEFT);
      textSize(25);
      textLeading(35);
      fill(255);
      text("«Ahora no tengo sopa y además tengo 3 personas\nmás para llevar al asado, mi abuela se va a\nenojar...»", 80, 80);
      if (linea1 < 720) {
        linea1=linea1+ 10;
      }
      if (linea1 == 720) {
        if (linea2 < 720) {
          linea2=linea2+ 10;
        }
      }
      if (linea2 == 720) {
        if (linea3 < 720) {
          linea3=linea3+ 10;
        }
      }

      fill(0);
      rect(linea1, 40, 720, 85);
      rect(linea2, 85, 720, 125);
      rect(linea3, 125, 720, 160);
      if (linea3==720) {
        textSize(25);
        textAlign(BOTTOM, RIGHT);
        fill(0);
        text("[ESPACIO] para continuar", width-325, height-18);
        fill(200);
        text("[ESPACIO] para continuar", width-325, height-20);


        if (keyPressed)
        {
          if (key == ' ') {
            estado = "CSPAbuela";
            linea1 = 80;
            linea2 = 80;
            linea3 = 80;
          }
        }
      }
    }
  }
  if (estado.equals("CSPAbuela")) {
    tint(#516595);
    image(cielo, width/2, height/2, 800, 600);
    image(pasto, width/2, height/2, 800, 600);
    tint (255);

    image(abuela, 600, 500, 200, 400);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#ADF770);
    text("«¿Trajiste gente sin avisar? No pasa nada,\npor suerte preparamos asado de más.\n¡Gracias por traer ensalada!»", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);
    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "continuar1";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado == "pum") {
    float ceroUno = round(frameCount*0.1%1);
    float mov = map(ceroUno, 0, 1, -2, 2);
    image(cocina, width/2, height/2, 800, 600);
    image(cacerola, cacerolaX + mov, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);
    tint(255);
    if (contador < 100)contador=contador+1;
    fill(#F74225, contador*3);
    rect(0, 0, 800, 600);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FFF36C);
    text("Agregaste salsa de habanero a la sopa.\n¡La sopa está reaccionando!", 80, 80);
    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    if (linea2==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "pum2";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
          contador = 0;
        }
      }
    }
  }
  if (estado.equals("pum2")) {
    image(cocina, width/2, height/2, 800, 600);
    tint(25);
    image(cacerola, width/2, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);
    tint(255, 255-contador*8);
    image(pum, width/2, height/2, width+contador*8, height+contador*8);
    if (contador < 150)contador=contador+1;
    tint(255);

    if (contador == 150) {
      image(cuadro, width/2, 118, 720, 176);
      textAlign(TOP, LEFT);
      textSize(25);
      textLeading(35);
      fill(255);
      text("«¡MI SOPA EXPLOTÓ!»", 80, 80);
      if (linea1 < 720) {
        linea1=linea1+ 20;
      }

      fill(0);
      rect(linea1, 40, 720, 85);
      if (linea1==720) {
        textSize(25);
        textAlign(BOTTOM, RIGHT);
        fill(0);
        text("[ESPACIO] para continuar", width-325, height-18);
        fill(200);
        text("[ESPACIO] para continuar", width-325, height-20);


        if (keyPressed)
        {
          if (key == ' ') {
            estado = "pum3";
            linea1 = 80;
            linea2 = 80;
            linea3 = 80;
          }
        }
      }
    }
  }
  if (estado.equals("pum3")) {
    image(cocina, width/2, height/2, 800, 600);
    tint(25);
    image(cacerola, width/2, 400, 140, 96);
    tint(#6BEA78);
    image(frasco, width/2, 190, 40, 64);
    tint(#8B43DE);
    image(frasco, width/2+150, 190, 40, 60);
    tint(255);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(255);
    text("«Ya casi es hora, voy a tener que ir\nsin sopa. Voy a comprar una gaseosa\nen el camino»", 80, 80);
    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);
    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(200);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "pumAbuela";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }

  if (estado.equals("pumAbuela")) {
    tint(#516595);
    image(cielo, width/2, height/2, 800, 600);
    image(pasto, width/2, height/2, 800, 600);
    tint (255);

    image(abuela, 600, 500, 200, 400);
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#ADF770);
    text("«¿Tu sopa qué?, no pasa nada, por suerte\npreparé un Vitel toné de emergencia\n¡Gracias por comprar la manaos!»", 80, 80);
    if (linea1 < 720) {
      linea1=linea1+ 10;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 10;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 10;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);
    if (linea3==720) {
      textSize(25);
      textAlign(BOTTOM, RIGHT);
      fill(0);
      text("[ESPACIO] para continuar", width-325, height-18);
      fill(255);
      text("[ESPACIO] para continuar", width-325, height-20);


      if (keyPressed)
      {
        if (key == ' ') {
          estado = "continuar1";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
      }
    }
  }


  if (estado.equals("continuar1")) {
    image(cuadro, width/2, 118, 720, 176);
    textAlign(TOP, LEFT);
    textSize(25);
    textLeading(35);
    fill(#FFF36C);
    text("[ESPACIO] = Fin\n[C] Volver a intentarlo\n[R] Volver a la pantalla de inicio", 80, 80);

    if (linea1 < 720) {
      linea1=linea1+ 20;
    }
    if (linea1 == 720) {
      if (linea2 < 720) {
        linea2=linea2+ 20;
      }
    }
    if (linea2 == 720) {
      if (linea3 < 720) {
        linea3=linea3+ 20;
      }
    }

    fill(0);
    rect(linea1, 40, 720, 85);
    rect(linea2, 85, 720, 125);
    rect(linea3, 125, 720, 160);

    if (linea3==720) {


      if (keyPressed)
      {
        if (key == 'c') {
          estado = "cocina2";
          linea1 = 80;
          linea2 = 80;
          linea3 = 80;
        }
        if (key == ' ') {
          estado = "creditos";
        }
      }
    }
  }

  if (estado.equals("creditos")) {
    background(0);
    image(titulo, width/2, height/2-120, 195*2, 92*2);
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(30);
    text("Historia ..... Ezequiel Ríos\nCódigo ..... Ezequiel Ríos\nSprites ..... Ezequiel Ríos / itch.io", width/2, 350);
    textSize(20);
    text("[C] Volver a la cocina\n[R] Volver a la pantalla de inicio\n[ESC] Salir", width/2, height-75);

    if (keyPressed)
    {
      if (key == 'c') {
        estado = "cocina2";
        linea1 = 80;
        linea2 = 80;
        linea3 = 80;
      }
    }
  }







  //if (estado.equals("prueba1")) {
  //  image(cielo, width/2, height/2, 800, 600);
  //  image(cuadro, width/2, 118, 720, 176);
  //  fill(255);
  //  textAlign(TOP, LEFT);
  //  textSize(30);
  //  textLeading(35);
  //  text("texto\nva\naquí"), 80, 80);
  //  if (linea1 < 720) {
  //    linea1=linea1+ 10;
  //  }
  //  if (linea1 == 720) {
  //    if (linea2 < 720) {
  //      linea2=linea2+ 10;
  //    }
  //  }
  //  if (linea2 == 720) {
  //    if (linea3 < 720) {
  //      linea3=linea3+ 10;
  //    }
  //  }
  //  fill(0);
  //  rect(linea1, 40, 720, 80);
  //  rect(linea2, 80, 720, 120);
  //  rect(linea3, 120, 720, 160);
  //  println(linea2);
  //  if (key == ' ') {
  //    estado = "inicio";
  //    println("aaa");
  //  }
  //}
  if (keyPressed) {
    if (key == 'r' ) 
      estado = "inicio";
  }
}
