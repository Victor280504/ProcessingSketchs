int [] [] M = new int [5] [5];
int x, y;
boolean start = false;
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  ellipseMode(CORNER);

  //criação
  int b = 0;
  while (b<5) {
    int linha = int(random(5));
    int coluna = int(random(5));

    if (M[linha] [coluna] == 0) {
      M[linha] [coluna] = 1;
      b = b+1;
    }
  }
}
void draw() {
  for (int i = 0; i < M.length; i++) {
    for (int j = 0; j < M[0].length; j++) {
      if (M[i][j] == 1) {
        fill(120, 70, 100);
        rect(j*100, i*100, 100, 100);
      }
      if (M[i] [j] == 0) {
        fill(60, 100, 30);
        rect(j*100, i*100, 100, 100);
      }
      if (M[i] [j] == 2) {
        fill(5, 50, 30);
        rect(j*100, i*100, 100, 100);
      }
    }
  }
  fill(280, 100, 100);
  ellipse(x*100, y*100, 100, 100);
}

void keyPressed() {
  if (keyCode == UP) {
    y--;
    if (keyCode == UP &&  M[y] [x] == 2)
      y++;
  }
  if (keyCode == DOWN) {
    y++;
    if (keyCode == DOWN &&  M[y] [x] == 2)
      y--;
  }
  if (keyCode == LEFT) {
    x--;
    if (keyCode == LEFT &&  M[y] [x] == 2)
      x++;
  }
  if (keyCode == RIGHT) {
    x++;
    if (keyCode == RIGHT && M[y] [x] == 2)
      x--;
  }

  if (M[y] [x] == 1) M[y] [x] = 0;
}

void mousePressed() {
  // println(mouseY/100, mouseX/100); 
  M[mouseY/100] [mouseX/100] = 2;
  if (keyCode == RIGHT || keyCode == DOWN) {
    if (start)
      M[mouseY/100] [mouseX/100] = 0;
  }
}
