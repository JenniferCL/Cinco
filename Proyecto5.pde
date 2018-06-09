int pantalla,juego;
PGraphics pg;
PImage avatar,avpieza11,avpieza12,avpieza13,avpieza14,bts,btspieza11,btspieza12,btspieza13,btspieza14;
PImage dis,dispieza11,dispieza12,dispieza13,dispieza14,rlx,rlxpieza11,rlxpieza12,rlxpieza13,rlxpieza14;
PImage emp,emppieza11,emppieza12,emppieza13,emppieza14;
float n=0,r=0;
int xspacing = 8,w,maxwaves = 4;
PFont letra,letra1;
int avatarm1,avatarm2,avatarm3,avatarm4,t;
int btsm1,btsm2,btsm3,btsm4,dism1,dism2,dism3,dism4;
int relaxm1,relaxm2,relaxm3,relaxm4,empm1,empm2,empm3,empm4;
color real;

float theta = 0.0;
float[] amplitude = new float[maxwaves];
float[] dx = new float[maxwaves];
float[] yvalues;

import processing.sound.*;

SoundFile avatarmusica;
SoundFile btsmusica;
SoundFile dismusica;
SoundFile relaxmusica;
SoundFile empiremusica;

Rompecabeza piezasAvatar1;
Rompecabeza piezasBts1;
Rompecabeza piezasDisc1;
Rompecabeza piezasRlx1;
Rompecabeza piezasEmp1;

void setup(){
  size (1000,600);
      avatarm1=0;
      avatarm2=0;
      avatarm3=0;
      avatarm4=0;
  
  letra=loadFont("NiagaraEngraved-Reg-100.vlw");
  letra1=loadFont("NiagaraEngraved-Reg-50.vlw");
  colorMode(RGB, 255, 255, 255, 100);
  w = width + 16;

  for (int i = 0; i < maxwaves; i++) {
    amplitude[i] = random(10,30);
    float period = random(100,300);
    dx[i] = (TWO_PI / period) * xspacing;
  }

  yvalues = new float[w/xspacing];
  pg = createGraphics(1000,600);
  
  avatar = loadImage("Avatar.jpg");
  avpieza11 = loadImage("Avatar1.1.jpg");
  avpieza12 = loadImage("Avatar1.2.jpg");
  avpieza13 = loadImage("Avatar1.3.jpg");
  avpieza14 = loadImage("Avatar1.4.jpg");
  bts = loadImage("BTS.jpg");
  btspieza11 = loadImage("BTS1.1.jpg");
  btspieza12 = loadImage("BTS1.2.jpg");
  btspieza13 = loadImage("BTS1.3.jpg");
  btspieza14 = loadImage("BTS1.4.jpg");
  dis = loadImage("Disclosure.jpg");
  dispieza11 = loadImage("Disclosure1.1.jpg");
  dispieza12 = loadImage("Disclosure1.2.jpg");
  dispieza13 = loadImage("Disclosure1.3.jpg");
  dispieza14 = loadImage("Disclosure1.4.jpg");
  rlx = loadImage("Relax.jpg");
  rlxpieza11 = loadImage("Relax1.1.jpg");
  rlxpieza12 = loadImage("Relax1.2.jpg");
  rlxpieza13 = loadImage("Relax1.3.jpg");
  rlxpieza14 = loadImage("Relax1.4.jpg");
  emp = loadImage("Plastic beach.jpg");
  emppieza11 = loadImage("Plastic beach1.1.jpg");
  emppieza12 = loadImage("Plastic beach1.2.jpg");
  emppieza13 = loadImage("Plastic beach1.3.jpg");
  emppieza14 = loadImage("Plastic beach1.4.jpg");
  piezasAvatar1 = new Avatar(200,200,200,400,800,400,800,200);
  piezasBts1 = new Bts(200,200,200,400,800,400,800,200);
  piezasDisc1 = new Disclosure(200,200,200,400,800,400,800,200);
  piezasRlx1 = new Relax(200,200,200,400,800,400,800,200);
  piezasEmp1 = new Empire(200,200,200,400,800,400,800,200);
  
  avatarmusica = new SoundFile(this, "Avatar - Smells Like A Freakshow.mp3");
  btsmusica = new SoundFile(this, "House of card - BTS.mp3");
  dismusica = new SoundFile(this, "Disclosure - You & Me.mp3");
  relaxmusica = new SoundFile(this, "Frankie Goes to Hollywood - Relax.mp3");
  empiremusica = new SoundFile(this, "Empire Ants - Relax.mp3");
}

void draw(){
  background(0);
  calcWave();
  renderWave();
  calcWave();
  renderWave();
  switch(pantalla){
    case 0:
    real=#00FF0E;
    juego=0;
    fill(#00FF0E,20);
    quad (150,100,850,100,850,500,150,500);
    fill(0,50);
    quad (175,125,825,125,825,475,175,475);
    
    fill(#00FF0E);
    textFont(letra);
    textLeading(60);
    textAlign(CENTER,CENTER);
    text("CoTheSo",500,300);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("ENTER",500,425);
    if ((mouseX>450)&(mouseX<550)&(mouseY>400)&(mouseY<450)){
      cursor(HAND);
    }
    else{
      cursor(ARROW);
    }
    break;
    case 1:
    cursor(ARROW);
    fill(real,80);
    rect(100, 100, 200, 150);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Smells like",200,150);
    text("a freakshow",200,200);
    fill(real,80);
    rect(400, 100, 200, 150);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("House",500,150);
    text("of cards",500,200);
    fill(real,80);
    rect(700, 100, 200, 150);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("You",800,150);
    text("and me",800,200);
    fill(real,80);
    rect(250, 350, 200, 150);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Relax",350,425);
    fill(real,80);
    rect(550, 350, 200, 150);
    fill(0);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Empire",650,400);
    text("Ants",650,450);
    fill(real,50);
    if ((mouseX>100)&(mouseX<300)&(mouseY>100)&(mouseY<250)){
      real=#FF0000;
      cursor(HAND);
    }
    else{
      if ((mouseX>400)&(mouseX<600)&(mouseY>100)&(mouseY<250)){
        real=#5DDAFF;
        cursor(HAND);
      }
      else {
        if ((mouseX>700)&(mouseX<900)&(mouseY>100)&(mouseY<250)){
          real=#FF52EB;
          cursor(HAND);
        }
        else{
          if((mouseX>250)&(mouseX<450)&(mouseY>350)&(mouseY<500)){
          real=#FFFFFF;
          cursor(HAND);
          }
          else {
          if((mouseX>550)&(mouseX<750)&(mouseY>350)&(mouseY<500)){
          real=#FC8E05;
          cursor(HAND);
          }
          else {
          real=#00FF0E;
          }
          }
        }
      }
    }
    break;
    case 2:
    cursor(ARROW);
    if((mouseX>450)&(mouseX<650)&(mouseY>500)&(mouseY<600)){
      cursor(HAND);
    }
    fill(real);
    textFont(letra1);
    textAlign(CENTER,CENTER);
    text("Nuevo Juego",500,575);
    if (juego==1){
      imageMode(CENTER);
      image (avatar,width/2,height/2);
      fill (0,80);
      rect(250,50,500,500);
      piezasAvatar1.display1();
      piezasAvatar1.mover1();
      piezasAvatar1.play();
      if (avatarm1==1){
        avatarmusica.play();
      }
      else{
        if (avatarm2==1){
        avatarmusica.play();
        avatarmusica.jump(80);
        }
        else{
          if(avatarm3==1){
        avatarmusica.play();
        avatarmusica.jump(160);
          }
          else{
            if (avatarm4==1){
        avatarmusica.play();
        avatarmusica.jump(240);
            }
          }
        }
      }
      if (t==0){
        avatarmusica.stop();
      }
      real=#FF0000;
      fill (real,200);
    }
    else {
    if (juego==2){
      imageMode(CENTER);
      image (bts,width/2,height/2);
      fill (0,80);
      rect(250,50,500,500);
      piezasBts1.display1();
      piezasBts1.mover1();
      piezasBts1.play();
      if (btsm1==1){
        btsmusica.play();
      }
      else{
        if (btsm2==1){
        btsmusica.play();
        btsmusica.jump(60);
        }
        else{
          if(btsm3==1){
        btsmusica.play();
        btsmusica.jump(120);
          }
          else{
            if (btsm4==1){
        btsmusica.play();
        btsmusica.jump(180);
            }
          }
        }
      }
      if (t==0){
        btsmusica.stop();
      }
      real=#5DDAFF;
      fill (real,200);
    }
    else{
    if (juego==3){
      imageMode(CENTER);
      image (dis,width/2,height/2);
      fill (0,80);
      rect(250,50,500,500);
      piezasDisc1.display1();
      piezasDisc1.mover1();
      piezasDisc1.play();
      if (dism1==1){
        dismusica.play();
      }
      else{
        if (dism2==1){
        dismusica.play();
        dismusica.jump(60);
        }
        else{
          if(dism3==1){
        dismusica.play();
        dismusica.jump(120);
          }
          else{
            if (dism4==1){
        dismusica.play();
        dismusica.jump(180);
            }
          }
        }
      }
      if (t==0){
        dismusica.stop();
      }
      real=#FF52EB;
      fill (real,200);
    }
    else {
    if (juego==4){
      imageMode(CENTER);
      image (rlx,width/2,height/2);
      fill (0,80);
      rect(250,50,500,500);
      piezasRlx1.display1();
      piezasRlx1.mover1();
      piezasRlx1.play();
      if (relaxm1==1){
        relaxmusica.play();
      }
      else{
        if (relaxm2==1){
        relaxmusica.play();
        relaxmusica.jump(60);
        }
        else{
          if(relaxm3==1){
        relaxmusica.play();
        relaxmusica.jump(120);
          }
          else{
            if (relaxm4==1){
        relaxmusica.play();
        relaxmusica.jump(180);
            }
          }
        }
      }
      if (t==0){
        relaxmusica.stop();
      }
      real=#FFFFFF;
      fill (real,200);
    }
    else{
    if (juego==5){
      imageMode(CENTER);
      image (emp,width/2,height/2);
      fill (0,80);
      rect(250,50,500,500);
      piezasEmp1.display1();
      piezasEmp1.mover1();
      piezasEmp1.play();
      if (empm1==1){
        empiremusica.play();
      }
      else{
        if (empm2==1){
        empiremusica.play();
        empiremusica.jump(60);
        }
        else{
          if(empm3==1){
        empiremusica.play();
        empiremusica.jump(120);
          }
          else{
            if (empm4==1){
        empiremusica.play();
        empiremusica.jump(180);
            }
          }
        }
      }
      if (t==0){
        empiremusica.stop();
      }
      real=#FC8E05;
      fill (real,200);
    }
    }
    }
    }
    }
    break;
  }
}


void calcWave() {
  theta += 0.02;

  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = 0;
  }

  for (int j = 0; j < maxwaves; j++) {
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      if (j % 2 == 0)  yvalues[i] += sin(x)*amplitude[j];
      else yvalues[i] += cos(x)*amplitude[j];
      x+=dx[j];
    }
  }
}


void renderWave() {
  noStroke();
  switch(pantalla){
    case 0:
    fill(real,50);
    break;
  }
  ellipseMode(CENTER);
  for (int x = 0; x < yvalues.length; x++) {
    ellipse(x*xspacing,height/2+yvalues[x],16,16);
  }
}

void mouseReleased(){
  switch (pantalla){
    case 0:
    if ((mouseX>450)&(mouseX<550)&(mouseY>400)&(mouseY<450)){
      cursor(HAND);
      pantalla=1;
    }
    break;
    case 1:
    if ((mouseX>100)&(mouseX<300)&(mouseY>100)&(mouseY<250)){
      pantalla=2;
      juego=1;
    }
    else{
      if ((mouseX>400)&(mouseX<600)&(mouseY>100)&(mouseY<250)){
      pantalla=2;
      juego=2;
      }
      else {
        if ((mouseX>700)&(mouseX<900)&(mouseY>100)&(mouseY<250)){
          pantalla=2;
          juego=3;
        }
        else{
          if((mouseX>250)&(mouseX<450)&(mouseY>350)&(mouseY<500)){
          pantalla=2;
          juego=4;
          }
          else {
          if((mouseX>550)&(mouseX<750)&(mouseY>350)&(mouseY<500)){
          pantalla=2;
          juego=5;
          }
          }
        }
      }
  }
    break;
    case 2:
    if ((mouseX>450)&(mouseX<650)&(mouseY>500)&(mouseY<600)){
      pantalla=1;
    }
    break;
  }
}

void keyPressed(){
  switch(pantalla){
    case 0:
    if (key==ENTER){
      pantalla=1;
    }
    break;
  }
}
