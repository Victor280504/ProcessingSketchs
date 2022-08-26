//questao2
void setup() {
  size(600, 600);
  background(0);
  funcao(int(random(300)), int(random(300)), int(random(10)), int(random(10)));
}
void draw() {
}
void mousePressed() {
  background(0);
  funcao(int(random(600)), int(random(600)), int(random(10)), int(random(10)));
}
void funcao(int x, int y, int n, int m) {
  for (int i=0; i<m; i++) {
    for (int j=0; j<n; j++) {
      circle(x+i*20, y+j*20, 20);
    }
  }
}
