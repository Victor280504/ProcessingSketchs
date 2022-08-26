int M[][] = new int [10][8];
int x, y, Mx, My;
int n, s;
boolean teste=false;
boolean teste2=false;
float t;
String resultado="TESTE DE  VISÃO, ACHE ERRO";
;
void setup() {
  size(600, 600);
  noStroke();
  background(160);
  println();
  cria();
  s=0;
}
void draw() {
  background(160);
  textSize(30);
  textAlign(CENTER);
  text(resultado, width/2, 520);
  if (teste==false) {
    desenhos(M);
    fill(255);
    rectMode(CORNER);
    rect(0, 580, t, 20);
  } 
  if (t>=600 && teste==false) {
    resultado="PERDEU PLAYBOY";
    teste=true;
    teste2=true;
  } else {
    t+=800/600.0;
  }
  if (teste==true && s>=3) {
    if (s==4)
      text("Parabéns", width/2, height/2);
    else {
      text("Perdestes", width/2, height/2);
    }
    resultado="FIM";
    teste2=true;
  }
}
void mousePressed() {
  if (teste2==false) {
    background(160);
    Mx=mouseX/60;
    My=mouseY/60;
    println("índices sorteados:", x, " ", y);
    println("posição do  clique:", mouseY, "", mouseX, "=>", My, "", Mx);

    if (teste(My, Mx) && teste==false) {
      resultado="Ganhou";
      t=0;
      s++;
      cria();
      if (s==4)
        teste=true;
    } else if ( teste==false) {
      resultado="Errou";
      teste=true;
      teste2=true;
      t=0;
    }
  }
}
boolean teste(int mx, int my) {
  if ((mx<8 && my<10) && M[my][mx]!=60) {
    return true;
  } else {
    return false;
  }
}
void losango(int x, int y, int l) {
  quad(x, y-l/2, x+l/2, y, x, y+l/2, x-l/2, y);
}
void desenhos(int[][] M) {
  for (int i=0; i<M[0].length; i++) {
    for (int j=0; j<M.length; j++) {
      if (s==0)
        losango(j*60+30, i*60+30, M[j][i]);
      if (s==1)
        desenho1(j*60+30, i*60+30, M[j][i]);
      if (s==2)
        desenho2(j*60+30, i*60+30, M[j][i]);
      if (s==3)
        desenho3(j*60+30, i*60+30, M[j][i]);
    }
  }
}
void desenho1(int x, int y, int l) {
  resultado="Fase 2";
  //fill(0);
  //rectMode(CORNER);
  //rect(x-l/2, y-l/2, l, l);
  fill(255);
  quad(x, y-l/2, x+l/2, y, x, y+l/2, x-l/2, y);
  fill(0);
  rectMode(CENTER);
  rect(x, y, l/2, l/2);
}
void desenho2(int x, int y, int l) {
  resultado="Fase 3";
  fill(255);
  quad(x, y-l/2, x+l/2, y, x, y+l/2, x-l/2, y);
  fill(0);
  rectMode(CENTER);
  ellipse(x, y, l*0.7, l*0.7);
}
void desenho3(int x, int y, int l) {
  resultado="FINAL";
  fill(0);
  rectMode(CORNER);
  ellipse(x, y, l, l);
  fill(255);
  quad(x, y-l/2, x+l/2, y, x, y+l/2, x-l/2, y);
  fill(0);
  rectMode(CENTER);
  rect(x, y, l/2, l/2);
  rectMode(CORNER);
}
void cria() {
  x = int(random(0, 10));
  y = int(random(0, 8));
  for (int i=0; i<M[0].length; i++) {
    for (int j=0; j<M.length; j++) {
      M[j][i]=60;
      M[x][y]=54;
      print(M[j][i], " ");
    }
    println();
  }
}
