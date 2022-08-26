ArrayList<Integer> J = new ArrayList ();
PImage imagem;
boolean teste=true;
void setup() {
  size(180, 270);
  imagem= loadImage("image.jpg");
  if (teste) {
    image(imagem, 0, 0);
  }
  noStroke();
  int[][]M = MatrizAnalizada(width, height);
  int[][]S = imagem1(M, 0, 0);

  //for (int i=0; i< S.length; i++) {
  //  for (int j =0; j< S[0].length; j++)
  //    J.add(0, S[i][j]);
  //}
  println(J.size());
  for (int i= 0; i<S.length; i++) {
    for (int j= 0; j<S[0].length; j++) {
      fill(S[i][j]);
      rect(i, j, 1, 1);
    }
  }
}
void draw() {
}
int[][] MatrizAnalizada(int x, int y) {
  color[][] N = new color [x][y];
  for (int i= 0; i< N.length; i++) {
    for (int j= 0; j< N[0].length; j++) {
      N[i][j]= get(i, j);
    }
  }
  println(N.length);
  return N;
}
int[][] imagem1( int M[][], int u, int l) {
  color[][] N = new color [180][270];
  color[][] P = new color [90][135];
  for (int i=0; i< M.length; i++) {
    for (int j=0; j< M[0].length; j++) {
      if (i%2==u && j%2==l) {
        N[i][j]= get(i, j);
      }
    }
  }
  for (int i=0; i< N.length; i++) {
    for (int j=0; j< N[0].length; j++) {
      if (N[i][j]!=0 && i>-1 && j>-1 && i<N.length && j< N[0].length ) {
        J.add(get(i, j));
      }
    }
  }
  return N;
}
color vizinhanca8(int x, int y, int M[][]) {
  color c3=0;
  for (int i=x-1; i<=x+1; i++ ) {
    for (int j=y-1; j<=y+1; j++ ) {
      c3 = M[i][j];
    }
  }
  return c3;
}
