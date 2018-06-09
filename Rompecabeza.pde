interface Rompecabeza{
  void display1();
  //void display2();
  //void display3();
  void mover1();
  //void mover2();
  //void mover3();
  void play();
}

class Avatar implements Rompecabeza{
  float x1,x2,x3,x4,y1,y2,y3,y4;
  Avatar (float x1_,float y1_,float x2_,float y2_,float x3_,float y3_,float x4_,float y4_){
    x1 = x1_;
    x2 = x2_;
    x3 = x3_;
    x4 = x4_;
    y1 = y1_;
    y2 = y2_;
    y3 = y3_;
    y4 = y4_;
  }
  void display1(){
    imageMode(CENTER);
    image (avpieza11,x1,y1);
    pushMatrix();
    translate(x1,y1);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("A",-85,90);
    popMatrix();
    image (avpieza12,x2,y2);
    pushMatrix();
    translate(x2,y2);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("S",-85,90);
    popMatrix();
    image (avpieza13,x3,y3);
    pushMatrix();
    translate(x3,y3);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("D",-85,90);
    popMatrix();
    image (avpieza14,x4,y4);
    pushMatrix();
    translate(x4,y4);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("F",-85,90);
    popMatrix();
  }
void mover1(){
  if (mousePressed == true && mouseX<(x1+125) && mouseX>(x1-125) && mouseY<(y1+125) && mouseY>(y1-125)){
    x1=mouseX;
    y1=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<200 && mouseY>150){
      x1=375;
      y1=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x2+125) && mouseX>(x2-125) && mouseY<(y2+125) && mouseY>(y2-125)){
    x2=mouseX;
    y2=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<200 && mouseY>150){
      x2=625;
      y2=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x3+125) && mouseX>(x3-125) && mouseY<(y3+125) && mouseY>(y3-125)){
    x3=mouseX;
    y3=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<450 && mouseY>400){
      x3=625;
      y3=425;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x4+125) && mouseX>(x4-125) && mouseY<(y4+125) && mouseY>(y4-125)){
    x4=mouseX;
    y4=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<450 && mouseY>400){
      x4=375;
      y4=425;
    }
  }
}
}
}
}
void play(){
  switch(key){
    case 'A':
    case 'a':
    if (keyPressed ==true){
      t=1;
      avatarm1=avatarm1+t;
    }
    break;
    case 'S':
    case 's':
    if (keyPressed ==true){
      t=1;
      avatarm2=avatarm2+t;
    }
    break;
    case 'D':
    case 'd':
    if (keyPressed ==true){
      t=1;
      avatarm3=avatarm3+t;
    }
    break;
    case 'F':
    case 'f':
    if (keyPressed ==true){
      t=1;
      avatarm4=avatarm4+t;
    }
    break;
  }
  if (keyPressed ==false){
    t=0;
      avatarm1=0;
      avatarm2=0;
      avatarm3=0;
      avatarm4=0;
  }
}
}

class Bts implements Rompecabeza{
  float x1,x2,x3,x4,y1,y2,y3,y4;
  Bts (float x1_,float y1_,float x2_,float y2_,float x3_,float y3_,float x4_,float y4_){
    x1 = x1_;
    x2 = x2_;
    x3 = x3_;
    x4 = x4_;
    y1 = y1_;
    y2 = y2_;
    y3 = y3_;
    y4 = y4_;
  }
  void display1(){
    imageMode(CENTER);
    image (btspieza11,x1,y1);
    pushMatrix();
    translate(x1,y1);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("A",-85,90);
    popMatrix();
    image (btspieza12,x2,y2);
    pushMatrix();
    translate(x2,y2);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("S",-85,90);
    popMatrix();
    image (btspieza13,x3,y3);
    pushMatrix();
    translate(x3,y3);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("D",-85,90);
    popMatrix();
    image (btspieza14,x4,y4);
    pushMatrix();
    translate(x4,y4);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("F",-85,90);
    popMatrix();
  }
void mover1(){
  if (mousePressed == true && mouseX<(x1+125) && mouseX>(x1-125) && mouseY<(y1+125) && mouseY>(y1-125)){
    x1=mouseX;
    y1=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<200 && mouseY>150){
      x1=375;
      y1=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x2+125) && mouseX>(x2-125) && mouseY<(y2+125) && mouseY>(y2-125)){
    x2=mouseX;
    y2=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<200 && mouseY>150){
      x2=625;
      y2=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x3+125) && mouseX>(x3-125) && mouseY<(y3+125) && mouseY>(y3-125)){
    x3=mouseX;
    y3=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<450 && mouseY>400){
      x3=625;
      y3=425;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x4+125) && mouseX>(x4-125) && mouseY<(y4+125) && mouseY>(y4-125)){
    x4=mouseX;
    y4=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<450 && mouseY>400){
      x4=375;
      y4=425;
    }
  }
}
}
}
}
void play(){
  switch(key){
    case 'A':
    case 'a':
    if (keyPressed ==true){
      t=1;
      btsm1=btsm1+t;
    }
    break;
    case 'S':
    case 's':
    if (keyPressed ==true){
      t=1;
      btsm2=btsm2+t;
    }
    break;
    case 'D':
    case 'd':
    if (keyPressed ==true){
      t=1;
      btsm3=btsm3+t;
    }
    break;
    case 'F':
    case 'f':
    if (keyPressed ==true){
      t=1;
      btsm4=btsm4+t;
    }
    break;
  }
  if (keyPressed ==false){
    t=0;
      btsm1=0;
      btsm2=0;
      btsm3=0;
      btsm4=0;
  }
}
}


class Disclosure implements Rompecabeza{
  float x1,x2,x3,x4,y1,y2,y3,y4;
  Disclosure (float x1_,float y1_,float x2_,float y2_,float x3_,float y3_,float x4_,float y4_){
    x1 = x1_;
    x2 = x2_;
    x3 = x3_;
    x4 = x4_;
    y1 = y1_;
    y2 = y2_;
    y3 = y3_;
    y4 = y4_;
  }
  void display1(){
    imageMode(CENTER);
    image (dispieza11,x1,y1);
    pushMatrix();
    translate(x1,y1);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("A",-85,90);
    popMatrix();
    image (dispieza12,x2,y2);
    pushMatrix();
    translate(x2,y2);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("S",-85,90);
    popMatrix();
    image (dispieza13,x3,y3);
    pushMatrix();
    translate(x3,y3);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("D",-85,90);
    popMatrix();
    image (dispieza14,x4,y4);
    pushMatrix();
    translate(x4,y4);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("F",-85,90);
    popMatrix();
  }
void mover1(){
  if (mousePressed == true && mouseX<(x1+125) && mouseX>(x1-125) && mouseY<(y1+125) && mouseY>(y1-125)){
    x1=mouseX;
    y1=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<200 && mouseY>150){
      x1=375;
      y1=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x2+125) && mouseX>(x2-125) && mouseY<(y2+125) && mouseY>(y2-125)){
    x2=mouseX;
    y2=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<200 && mouseY>150){
      x2=625;
      y2=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x3+125) && mouseX>(x3-125) && mouseY<(y3+125) && mouseY>(y3-125)){
    x3=mouseX;
    y3=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<450 && mouseY>400){
      x3=625;
      y3=425;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x4+125) && mouseX>(x4-125) && mouseY<(y4+125) && mouseY>(y4-125)){
    x4=mouseX;
    y4=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<450 && mouseY>400){
      x4=375;
      y4=425;
    }
  }
}
}
}
}
void play(){
  switch(key){
    case 'A':
    case 'a':
    if (keyPressed ==true){
      t=1;
      dism1=dism1+t;
    }
    break;
    case 'S':
    case 's':
    if (keyPressed ==true){
      t=1;
      dism2=dism2+t;
    }
    break;
    case 'D':
    case 'd':
    if (keyPressed ==true){
      t=1;
      dism3=dism3+t;
    }
    break;
    case 'F':
    case 'f':
    if (keyPressed ==true){
      t=1;
      dism4=dism4+t;
    }
    break;
  }
  if (keyPressed ==false){
    t=0;
      dism1=0;
      dism2=0;
      dism3=0;
      dism4=0;
  }
}
}

class Relax implements Rompecabeza{
  float x1,x2,x3,x4,y1,y2,y3,y4;
  Relax (float x1_,float y1_,float x2_,float y2_,float x3_,float y3_,float x4_,float y4_){
    x1 = x1_;
    x2 = x2_;
    x3 = x3_;
    x4 = x4_;
    y1 = y1_;
    y2 = y2_;
    y3 = y3_;
    y4 = y4_;
  }
  void display1(){
    imageMode(CENTER);
    image (rlxpieza11,x1,y1);
    pushMatrix();
    translate(x1,y1);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("A",-85,90);
    popMatrix();
    image (rlxpieza12,x2,y2);
    pushMatrix();
    translate(x2,y2);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("S",-85,90);
    popMatrix();
    image (rlxpieza13,x3,y3);
    pushMatrix();
    translate(x3,y3);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("D",-85,90);
    popMatrix();
    image (rlxpieza14,x4,y4);
    pushMatrix();
    translate(x4,y4);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("F",-85,90);
    popMatrix();
  }
void mover1(){
  if (mousePressed == true && mouseX<(x1+125) && mouseX>(x1-125) && mouseY<(y1+125) && mouseY>(y1-125)){
    x1=mouseX;
    y1=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<200 && mouseY>150){
      x1=375;
      y1=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x2+125) && mouseX>(x2-125) && mouseY<(y2+125) && mouseY>(y2-125)){
    x2=mouseX;
    y2=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<200 && mouseY>150){
      x2=625;
      y2=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x3+125) && mouseX>(x3-125) && mouseY<(y3+125) && mouseY>(y3-125)){
    x3=mouseX;
    y3=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<450 && mouseY>400){
      x3=625;
      y3=425;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x4+125) && mouseX>(x4-125) && mouseY<(y4+125) && mouseY>(y4-125)){
    x4=mouseX;
    y4=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<450 && mouseY>400){
      x4=375;
      y4=425;
    }
  }
}
}
}
}
void play(){
  switch(key){
    case 'A':
    case 'a':
    if (keyPressed ==true){
      t=1;
      relaxm1=relaxm1+t;
    }
    break;
    case 'S':
    case 's':
    if (keyPressed ==true){
      t=1;
      relaxm2=relaxm2+t;
    }
    break;
    case 'D':
    case 'd':
    if (keyPressed ==true){
      t=1;
      relaxm3=relaxm3+t;
    }
    break;
    case 'F':
    case 'f':
    if (keyPressed ==true){
      t=1;
      relaxm4=relaxm4+t;
    }
    break;
  }
  if (keyPressed ==false){
    t=0;
      relaxm1=0;
      relaxm2=0;
      relaxm3=0;
      relaxm4=0;
  }
}
}

class Empire implements Rompecabeza{
  float x1,x2,x3,x4,y1,y2,y3,y4;
  Empire (float x1_,float y1_,float x2_,float y2_,float x3_,float y3_,float x4_,float y4_){
    x1 = x1_;
    x2 = x2_;
    x3 = x3_;
    x4 = x4_;
    y1 = y1_;
    y2 = y2_;
    y3 = y3_;
    y4 = y4_;
  }
  void display1(){
    imageMode(CENTER);
    image (emppieza11,x1,y1);
    pushMatrix();
    translate(x1,y1);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("A",-85,90);
    popMatrix();
    image (emppieza12,x2,y2);
    pushMatrix();
    translate(x2,y2);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("S",-85,90);
    popMatrix();
    image (emppieza13,x3,y3);
    pushMatrix();
    translate(x3,y3);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("D",-85,90);
    popMatrix();
    image (emppieza14,x4,y4);
    pushMatrix();
    translate(x4,y4);
    fill(real);
    rect(-110,60,50,50);
    textFont(letra1);
    fill(0);
    textAlign(CENTER,CENTER);
    text("F",-85,90);
    popMatrix();
  }
void mover1(){
  if (mousePressed == true && mouseX<(x1+125) && mouseX>(x1-125) && mouseY<(y1+125) && mouseY>(y1-125)){
    x1=mouseX;
    y1=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<200 && mouseY>150){
      x1=375;
      y1=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x2+125) && mouseX>(x2-125) && mouseY<(y2+125) && mouseY>(y2-125)){
    x2=mouseX;
    y2=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<200 && mouseY>150){
      x2=625;
      y2=175;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x3+125) && mouseX>(x3-125) && mouseY<(y3+125) && mouseY>(y3-125)){
    x3=mouseX;
    y3=mouseY;
    if (mouseX<650 && mouseX>600 && mouseY<450 && mouseY>400){
      x3=625;
      y3=425;
    }
  }
  else{
  if (mousePressed == true && mouseX<(x4+125) && mouseX>(x4-125) && mouseY<(y4+125) && mouseY>(y4-125)){
    x4=mouseX;
    y4=mouseY;
    if (mouseX<400 && mouseX>350 && mouseY<450 && mouseY>400){
      x4=375;
      y4=425;
    }
  }
}
}
}
}
void play(){
  switch(key){
    case 'A':
    case 'a':
    if (keyPressed ==true){
      t=1;
      empm1=empm1+t;
    }
    break;
    case 'S':
    case 's':
    if (keyPressed ==true){
      t=1;
      empm2=empm2+t;
    }
    break;
    case 'D':
    case 'd':
    if (keyPressed ==true){
      t=1;
      empm3=empm3+t;
    }
    break;
    case 'F':
    case 'f':
    if (keyPressed ==true){
      t=1;
      empm4=empm4+t;
    }
    break;
  }
  if (keyPressed ==false){
    t=0;
      empm1=0;
      empm2=0;
      empm3=0;
      empm4=0;
  }
}
}
