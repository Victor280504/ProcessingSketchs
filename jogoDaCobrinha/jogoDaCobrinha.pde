int [][] Mpos= criaMatriz(20, 0);
int [][] Npos= criaMatriz(20, 0);
int cobraReal[]= new int [30];
int x, y, tam, n, pontos, m, z;
boolean [] direcao = {false, false, false, false};
int contador=0;
cobra teste = new cobra(1, 1);
void setup() {
  size(600, 600);
  tam=30;
  frameRate(60);
  for (int i=1; i<cobraReal.length; i++) {
    cobraReal[i]=0;
  }
}
int [][] criaMatriz(int n, int v) {
  int [][] M = new int [n][n];
  for (int i=0; i<M.length; i++) {
    for (int j=0; j<M.length; j++) {
      M[i][j]=int(random(0, v));
      print( M[j][i], " ");
    }
    println();
  }
  return M;
}
void draw() {
  contador++;
  for (int i=0; i<Mpos.length; i++) {
    for (int j=0; j<Mpos[0].length; j++) {
      if (i>-1 && j>-1 && i<Mpos.length && j<Mpos.length ) { 
        if (Mpos[j][i]==0)
          fill(255);
        else if (Mpos[i][j]==2)
          fill(255, 0, 0);
        else fill(0);
        rect(i*tam, j*tam, tam, tam);
      }
    }
  }

  teste.objeto();
  teste.direcao();
  teste.adicionaFruta();
  teste.adicionaTamanho();

  if (contaZeros()==324) {
    n=2;
    pontos+=1;
  }
  if (teste(n)) {
    sorteio();
  }
  n++;
}

void keyPressed() {
  if (keyCode == UP) {
    resetPosicao();
    direcao[0]=true;
  }
  if (keyCode == DOWN) {
    resetPosicao();
    direcao[1]=true;
  }
  if (keyCode == LEFT) {
    resetPosicao();
    direcao[2]=true;
  }
  if (keyCode == RIGHT) {
    resetPosicao();
    direcao[3]=true;
  }
}

void mousePressed() {
}

class cobra {
  int posX;
  int posY;
  int contaTamanho;
  cobra(int PosX, int PosY) {
    posX=PosX;
    posY=PosY;
  }
  void adicionaFruta() {
    if (Mpos[posY][posX]==1) {
      Mpos[posY][posX]=0;
    }
    println( Mpos[posX][posY], n, teste(n), posX, posY, contaZeros(), pontos);
  }
  void direcao() {
    if (direcao[0]==true) {
      if (contador%30==10) {
        posY--;
      }
    } else if (direcao[1]==true) {
      if (contador%30==10) {
        posY++;
      }
    } else if (direcao[2]==true) {
      if (contador%30==10) {
        posX--;
      }
    } else if (direcao[3]==true) {
      if (contador%30==10) {
        posX++;
      }
    }
  }
  void adicionaTamanho() {
    for (int i=0; i< cobraReal.length; i++) {
      cobraReal[i]=i;
      fill(0, 0, 255);
      if (cobraReal[i]==3)
        ellipse(cobraReal[pontos]*50, 100, 50, 50);
    }
  }
  void objetoNovo(int posx, int posy) {
    int nPosx = posx;
    int nPosy = posy;
    fill(130);
    ellipseMode(CORNER);
    ellipse(int(random(19))*tam, int(random(19))*tam, tam, tam);
  }
  void objeto() {
    m=posX;
    z=posY;
    int h =0;
    int c =0;
    fill(130);
    ellipseMode(CORNER);
    if (direcao[0]) {
      h=0;
      c=1;
    } else if (direcao[1]) {
      h=0;
      if (contador%60==10) {
        c=0;
      } else c=1;
    } else if (direcao[2]) {
      h=-1;
      c=0;
    } else if (direcao[3]) {
      h=1;
      c=0;
    }
    fill(255, 255, 0);
    ellipse(m*tam, z*tam, tam, tam);
    fill(180);
    ellipse((m-h)*tam, (z-c)*tam, tam, tam);
  }
}

void resetPosicao() {
  for (int i=0; i<direcao.length; i++) {
    direcao[i]=false;
  }
}

int contaZeros() {
  int contador=0;
  for (int i=1; i<Mpos.length; i++) {
    for (int j=1; j<Mpos[0].length; j++) {
      if (Mpos[i][j]==0)
        contador++;
    }
  }
  return contador;
}
boolean teste(int n) {
  if (n==2) {
    return true;
  } else return false;
}
void sorteio() {
  for (int i=1; i<Mpos.length; i++) {
    for (int j=1; j<Mpos[0].length; j++) {
      Mpos[i][j]=0;
    }
  }
  barreiras();
  int p=0;
  while (p<1) {
    int l = int(random(1, 19));
    int c = int(random(1, 19));
    if (Mpos[l][c]==0) {
      Mpos[l][c]=1;
      p+=1;
    } else println("repete");
  }
}
void barreiras() {
  for (int j=0; j<Mpos[0].length; j++) {
    Mpos[0][j]=2;
    Mpos[j][0]=2;
    Mpos[19][j]=2;
    Mpos[j][19]=2;
  }
}
