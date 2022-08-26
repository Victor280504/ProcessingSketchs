ArrayList<Integer> x= new ArrayList<Integer>();
ArrayList<Integer> y= new ArrayList<Integer>();
int bloco=20, w=30, h=30, comidax = 15, comiday=15, speed;
int direcao = 0;
int[] x_direcao = {0, 0, 1, -1}, y_direcao={1, -1, 0, 0}; 
// 0 = baixo
// 1 = cima
// 2 = direita
// 3 = esquerda
boolean gameover=false;
void setup() {
  size(600, 600);
  speed=10;
  x.add(0);
  y.add(0);
}

void draw() {

  if (gameover==false) {
    background(0);
    for (int i=0; i<x.size(); i++) {
      println(y.size());
      fill(#158B51);
      rect(x.get(i)*bloco, y.get(i)*bloco, bloco, bloco);
    }
    fill(255, 0, 0);
    ellipse(comidax*bloco+10, comiday*bloco+10, bloco, bloco);

    textAlign(LEFT);
    textSize(25);
    fill(255);
    text("Placar: "+ x.size(), 10, 10, width-20, 50);

    if (frameCount%speed==0) {
      x.add(0, x.get(0)+ x_direcao[direcao]);
      y.add(0, y.get(0)+ y_direcao[direcao]);
      if (x.get(0)==comidax && y.get(0)== comiday ) {
        if (x.size()%5==0 && speed>=2) speed--;
        comidax= int(random(0, w));
        comiday= int(random(0, h));
      } else {
        x.remove(x.size()-1);
        y.remove(y.size()-1);
      }
    }
    for (int i = 1; i < x.size(); i++) {
      if (x.get(0)==x.get(i) && y.get(0)==y.get(i)) {
        println("LOSER");
        gameover=true;
      }
    }
    println(x.get(0));
  }
}
void keyPressed() {
  int new_dire = keyCode == DOWN?0:(keyCode == UP?1:(keyCode == RIGHT?2:(keyCode == LEFT?3:-1)));
  if (new_dire != -1) {
    direcao= new_dire;
  }
}
