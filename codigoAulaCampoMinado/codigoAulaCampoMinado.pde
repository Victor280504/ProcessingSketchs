int [][] M= new int [10][10];
int x, y;
void setup() {
  size(500, 500);
  int b=0;
  while (b<10) {
    int l = int(random(10));
    int c = int(random(10));
    if (M[l][c]==0) {
      M[l][c]=1;
      b++;
    } else
      println("repete");
  }
}
void draw() {
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      if (i>-1 && j>-1 && i<10 && j<10 ) { 
        if (M[j][i]==0)
          fill(255);
        else fill(0);
        rect(i*width/10, j*height/10, width/10, height/10);
      }
    }
  }
  fill(130);
  ellipse(x*50+25, y*50+25, width/10, width/10);
  //  for (int i=0; i<10; i++) {
  //    for (int j=0; j<10; j++) {
  //      if (i>-1 && j>-1 && i<10 && j<10 ) { 
  //        if (M[y][x]==1) {
  //          M[y][x]=0;
  //        }
  //      }
  //    }
  //  }
}

void keyPressed() {
  if (keyCode == UP) {
    y--;
  }
  if (keyCode == DOWN) {
    y++;
  }
  if (keyCode == LEFT)
    x--;
  if (keyCode == RIGHT)
    x++;
}
//void mousePressed() {
//}
//void desenho() {
//}
