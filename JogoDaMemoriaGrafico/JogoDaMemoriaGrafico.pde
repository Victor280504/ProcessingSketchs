int M [] [] = new int [4] [4];
int x1, y1, x2, y2, counter, aux, k;
boolean cor = false;
boolean ganhou = false;
void setup () {
  size (400, 400);
  colorMode(HSB, 360, 100, 100);
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      M [i] [j] = 0;
    }
  }
  for (int i=0; i<8; i++) {
    int t=0;
    while (t<2) {
      int l = int(random(4));
      int c = int(random(4));
      if (M [l] [c] == 0) {
        M[l] [c] = i;
        t++;
      }
    }
  }
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      //print(M [i] [j], "");
    }
    // println();
  }
}
void draw() {
  if (aux==0) {
    for (int i=0; i<M.length; i++) {
      for (int j=0; j<M[0].length; j++) {
        fill( 244, 0, 80);
        rect(i*100, j*100, 100, 100);
      }
    }
  } else {
    for (int i=0; i<M.length; i++) {
      for (int j=0; j<M[0].length; j++) {
        fill( 244, 0, 80);
        rect(i*100, j*100, 100, 100);
        if (M[i][j]==8) {
          fill( 121, 0, 100);
          rect(i*100, j*100, 100, 100);
        }
        if (cor==false && counter!=0) {
          fill( M[x2] [y2]*45, 60, 80);
          rect(x2*100, y2*100, 100, 100);
        } 
        if (cor==false &&  counter!=1) {
          fill( M[x2] [y2]*45, 60, 80);
          rect(x2*100, y2*100, 100, 100);
          fill( M[x1] [y1]*45, 60, 80);
          rect(x1*100, y1*100, 100, 100);
        }
      }
    }
  }
}
void mousePressed() {
  counter++;
  aux++;
  if (counter%2==0) {
    x1 = mouseX/100;
    y1 = mouseY/100;
  }
  if (counter%2==1) {
    x2 = mouseX/100;
    y2 = mouseY/100;
  }
  if (M[x1][y1] == M[x2][y2] && counter>1 && teste(x1, x2, y1, y2)==true) {
    println("NICE");
    counter=0;
    M[x1][y1]=8;
    M[x2][y2]=8;
  } else if (M[x1][y1] != M[x2][y2] && counter%2!=1) {
    println("TRY AGAIN CHAPA");
    counter=0;
  }
  println(counter);
}
boolean teste(int x1, int x2, int y1, int y2) {
  if ((x1==x2 && y1!=y2) || (x1!=x2 && y1!=y2) || (x1!=x2 && y1==y2))
    return true;
  else return false;
}
