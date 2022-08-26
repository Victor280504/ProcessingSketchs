void setup() { //<>//
  int tam = width/20;
  size(displayWidth, displayHeight);
  //strokeWeight(3);


  for (int i=0; i<height; i++) {
    stroke(100, 150, 150);
    line(0, i, width, i);
  }
  stroke(255);
  noFill();
  for (int i=0; i<width; i++) {
    for (int j=0; j<height; j++) {
      int s= int(random(2));
      if (s==0)
        desenho1(i*tam, j*tam, tam);
      if (s==1)
        desenho2(i*tam, j*tam, tam);
    }
  }
}
void desenho1(int x, int y, int tam) {
  arc(x, y, tam, tam, radians(0), radians(90));
  arc(x+tam, y+tam, tam, tam, radians(180), radians(270));
}
void desenho2(int x, int y, int tam) {
  arc(x, y+tam, tam, tam, radians(270), radians(360));
  arc(x+tam, y, tam, tam, radians(90), radians(180));
}
