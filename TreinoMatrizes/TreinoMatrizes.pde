int [][] M = new int[10][10];
boolean perdeu;
int n =0;
void setup() {
  size(600, 600);
}
void draw() {
  if (newTeste(n)==true)
    play();
  desenhos(M);
  n++;
}

void mousePressed() {
  int i =mouseY/60;
  int j=mouseX/60;
  //println(mouseX, mouseY);
  //println(teste(i, j));
  if (teste(i, j)==true) {
    perdeu=true;
  } else if (teste(i, j)==false) {
    if (i==0 && j==0) {
      varreduraNormal(i, j, 0, 2, 0, 2);
    } else if (i==9 && j==0) {
      varreduraNormal(i, j, 1, 1, 0, 2);
    } else if (i==9 && j==9) {
      varreduraNormal(i, j, 1, 1, 1, 1);
    } else if (i==0 && j==9) {
      varreduraNormal(i, j, 0, 2, 1, 1);
    } else if (i==0) {
      varreduraNormal(i, j, 0, 2, 1, 2);
    } else if (i==9) {
      varreduraNormal(i, j, 1, 1, 1, 2);
    } else if (j==0) {
      varreduraNormal(i, j, 1, 2, 0, 2);
    } else if (j==9) {
      varreduraNormal(i, j, 1, 2, 1, 1);
    } else {
      varreduraNormal(i, j, 1, 2, 1, 2);
    }
  }
}
boolean newTeste(int n) {
  if (n==2)
    return true;
  else return false;
}
void varreduraNormal(int x, int y, int s, int k, int g, int h) {
  for (int i=x-s; i<x+k; i++ ) {
    println();
    for (int j=y-g; j<y+h; j++ ) {
      print(M[i][j], " ");
      if (M[i][j]==0) {
        M[i][j]=4;
      }
    }
  }
  M[x][y]=3;
}
void desenhos(int[][] M) {
  for (int i=0; i<M.length; i++ ) {
    for (int j=0; j< M[0].length; j++ ) {
      if (M[j][i]==0)
        fill(130);
      if (M[j][i]==4)
        fill(0, 255, 255);
      if (M[j][i]==1)
        fill(0);
      if (M[j][i]==3)
        fill(255, 255, 0);
      rect(i*60, j*60, width/10, height/10);
    }
  }
}
void play() {
  int b=0;
  while (b<10) {
    int l = int(random(10));
    int c = int(random(10));
    if (M[l][c] !=1) {
      M[l][c]=1;
      b++;
    }
  }
  for (int i=0; i<M.length; i++ ) {
    println();
    for (int j=0; j< M[0].length; j++ ) {
      //M[i][j]= int(random(0, 2));
      print(M[i][j], "  ");
    }
  }
}
boolean teste(int i, int j) {
  if (M[i][j]==1) {
    return true;
  } else return false;
}
