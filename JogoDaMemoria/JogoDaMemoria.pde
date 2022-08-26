int [] [] M = new int [4] [4];
int [] valores = {0, 1, 2, 3, 4, 5, 6, 7};
int aux=0;
int k=0;
void setup() {
  size(500, 500);
  for (int i=0; i<8; i++) {
    int t=0;
    while (t<2) {
      int l = int(random(4));
      int c = int(random(4));
      if (M[l][c]==0) {
        M[l][c]=valores[i];
        t++;
      }
    }
  }
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      print(M [i] [j], " ");
    }
    println();
  }
  noStroke();
}
void draw() {
  for (int i=0; i<M.length; i++) {
    for (int j=0; j<M[0].length; j++) {
      switch(M[i][j]) {
      case 0:
        fill(0, 255, 255);
        break;
      case 1:
        fill(100, 25, 202);
        break;
      case 2:
        fill(244, 123, 123);
        break;
      case 3:
        fill(123, 87, 232);
        break;
      case 4:
        fill(231, 65, 23);
        break;
      case 5:
        fill(235, 62, 265);
        break;
      case 6:
        fill(222, 333, 111);
        break;
      case 7:
        fill(122, 133, 11);
        break;
      }
      rect(i*125, j*125, 125, 125);
    }
  }
}
