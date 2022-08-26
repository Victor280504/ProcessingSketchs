//questao1
int Jamile[] = new int[3];
int n=0;
int [] mudaCor(int Jam[]) {
  int []fulano = new int[3];
  for (int i=0; i<fulano.length; i++) {
    fulano[i]=255-Jam[i];
  }
  return fulano;
}
void setup() {
  size(300, 300);
  for (int i=0; i<Jamile.length; i++) {
    Jamile[i]=int(random(256));
    print(Jamile[i], "");
  }
}

void draw() {
  fill(Jamile[0], Jamile[1], Jamile[2]);
  rect(0, 0, width, height);
}
void mousePressed() {
  Jamile = mudaCor(Jamile);
  println();
  for (int i=0; i<Jamile.length; i++)
    print(Jamile[i], "");
}
