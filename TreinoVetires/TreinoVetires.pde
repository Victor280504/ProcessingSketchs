int [] X = new int[10];
int [] Y = new int [10];
int counter, n;
boolean start, j;
void setup() {
  size(500, 500);
  j = false;
  for (int i=0; i<10; i++) {
    Y[i]=-height*2;
    Y[1]=-height*2+100;
    X[i]=i*width/10;
  }
  counter=3;
  start=false;
  background(180);
}
void draw() {
  if (start) {
    start1();
  } else {
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("Clique em qualquer lugar para começar.", width/2, 400);
    text("Objetivo:Clicar com o mouse acima da linha verde", width/2, 425);
    for (int i=0; i<10; i++) {
      Y[i]=-height*2;
      Y[1]=-height*2+100;
      X[i]=i*width/10;
    }
    counter=3;
    n=0;
    j = false;
  }
}
void mousePressed() {
  if (start==false)
    start=true;
}
boolean newTeste(int n) {
  if (n==60 )
    return true;
  if (n==120)
    return true;
  if (n==180)
    return true;
  if (n==340)
    return true;
  if (n==400)
    return true;
  else return false;
}
void start1() {
  if (newTeste(n)==true) {
    counter--;
  }
  n++;
  //  println(n, newTeste(n), counter );

  background(0);
  stroke(0, 255, 0);
  line(0, 20, 600, 20);
  noStroke();
  textSize(100);
  textAlign(CENTER);
  fill(255);
  if (n<181)
    text(counter, width/2, height/2);
  for (int i=0; i<10; i++) {
    //atualização
    Y[i]+=random(0, 8);
    if (Y[i]>=width)
      Y[i]=0;
    //desenho
    fill(255);
    rect(X[i], Y[i], width/10, width/10);
    //colisão
    if (mouseX>=X[i] && mouseX<=X[i]+width/10 && mouseY>=Y[i] && mouseY<=Y[i]+height/10) {
      j=true;
    } else if (mousePressed && mouseY>=0 && mouseY<=40 && counter<0) {
      background(180);
      textAlign(CENTER);
      textSize(100);
      fill(0, 255, 0);
      text("GANHAMO", width/2, height/2);
      start=false;
    }
    if (j) {
      background(180);
      textAlign(CENTER);
      textSize(100);
      fill(255, 0, 0);
      text("PERDEMO", width/2, height/2);
      start=false;
    }
  }
}
