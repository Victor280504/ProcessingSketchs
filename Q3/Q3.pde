void setup() {
  int [][] Z = criaMatriz(5);
  int  t = conta(Z);
  println(t);
}
int conta(int Z[][]) {
  int x=0;
  for (int i=0; i<Z.length; i++) {
    for (int j=0; j<Z.length; j++) {
      if (Z[i][j]==1)
        x++;
    }
  }
  return x;
}
int [][] criaMatriz(int tam) {
  int [][] M = new int [tam][tam];
  for (int i=0; i<M.length; i++) {
    for (int j=0; j<M.length; j++) {
      M[i][j]=int(random(2));
      print( M[i][j], " ");
    }
    println();
  }
  return  M;
}
