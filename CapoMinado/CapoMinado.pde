int [][] M = new int[10][10];
boolean m=true;
void setup() {
  size(600, 600);
  criaMatriz();
}
void draw() {
  desenhos();
}
boolean teste(int i, int j) {
  if (M[i][j]==1) {
    return true;
  } else return false;
}
void mousePressed() {
  int x =mouseY/60;
  int y=mouseX/60;
  if (m) { 
    if (teste(x, y)) {
      for (int i=0; i<M.length; i++ ) {
        for (int j=0; j<M[0].length; j++ ) {
          if (M[i][j]==1) {
            M[i][j]=4;
            m=false;
          }
        }
      }

      println("FIM DE JOGO", " ");
    } else {
      if (M[x][y]!=2)
        vizinhanca8(x, y);
    }
  }
}
void vizinhanca8(int x, int y) {
  println();
  println("Posições Livres:");
  for (int i=x-1; i<=x+1; i++ ) {
    for (int j=y-1; j<=y+1; j++ ) {
      M[x][y]=3;
      if ( i>-1 && j>-1 && i<10 && j<10 && M[i][j]==0) {
        M[i][j]=2;
        println( "(", i, j, ")");
      }
    }
  }
}
void desenhos() {
  for (int i=0; i<M.length; i++ ) {
    for (int j=0; j< M[0].length; j++ ) {
      if (M[j][i]==0)
        fill(130);
      if (M[j][i]==1)
        fill(130);
      if (M[j][i]==2)//livres
        fill(0, 255, 255);
      if (M[j][i]==3)//apertado
        fill(255, 255, 0);
      if (M[j][i]==4)//apertado
        fill(255, 0, 0);
      rect(i*60, j*60, width/10, height/10);
    }
  }
}
void criaMatriz() {
  int b=0;
  while (b<15) {
    int l =int(random(0, 10));
    int c =int(random(0, 10));
    if (M[l][c]==0) {
      M[l][c]=1;
      b++;
    } else println("repete");
  }
  for (int i=0; i<M.length; i++ ) {
    println();
    for (int j=0; j< M[0].length; j++ ) {
      print(M[i][j], " ");
    }
  }
}
