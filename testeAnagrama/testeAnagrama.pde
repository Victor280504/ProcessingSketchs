//Fazer as análises dos elementos repetidos

ArrayList<Character> anagramas = new ArrayList(); 
ArrayList<Integer> Npos = new ArrayList(); 
PImage menu, sortear, sortearR;
PFont monospace;
boolean escrever, posicoes, respostas;
int counter;
void setup() {
  size(675, 675);
  menu=loadImage("menu.png");
  sortear = loadImage("sortear.png");
  sortearR= loadImage("sortearR.png");
  monospace = createFont("Monospaced.bold", 20);
}
void draw() {
  if (mouseX>=425 && mouseX<=625 && mouseY>=540 && mouseY<=600) {
    imageMode(CORNER);
    image(menu, 0, 0);
    imageMode(CENTER);
    image(sortear, 525, 575);
  } else {
    imageMode(CORNER);
    image(menu, 0, 0);
  }
  for (int i=0; i <anagramas.size(); i++) {
    textSize(20);
    textFont(monospace);
    fill(0);
    text(anagramas.get(i), 85+i*20, 260);
  }
  for (int i=0; i< Npos.size(); i++) {
    textSize(20);
    textFont(monospace);
    fill(0);
    text(Npos.get(i), 515+i*20, 260);
  }
  if (escrever) {
    if (frameCount%60>25)
      stroke(255);
    else stroke(0);
    line(85+anagramas.size()*20, 245, 85+anagramas.size()*20, 260);
  }

  if (posicoes) {
    if (frameCount%60>25)
      stroke(255);
    else stroke(0);
    line(515+Npos.size()*20, 245, 515+Npos.size()*20, 260);
  }
  if (respostas) {
    textSize(20);
    textFont(monospace);
    fill(0);
    text(combinacao(pegaValorDoAnagramas(), pegaValorDoNpos()), 325, 330);
    text(permutacao(pegaValorDoAnagramas()), 325, 403);
    text( arranjo(pegaValorDoAnagramas(), pegaValorDoNpos()), 275, 478);
  }
  println(mouseX, mouseY);
}
void mousePressed() {
  if (mouseX>=70 && mouseX<=410 && mouseY>=220 && mouseY<=285) {
    escrever=true;
  } else escrever=false;
  if (mouseX>=480 && mouseX<=580 && mouseY>=220 && mouseY<=290) {
    posicoes=true;
  } else posicoes =false;

  if (mouseX>=425 && mouseX<=625 && mouseY>=540 && mouseY<=600) { // SORTEAR O ANAGRAMA, E CHAMAR AS FUNCOES DE ANÁLISE QUE LIGAM BOOLEANS DE DESENHO
    respostas=true;
  }
}
void keyPressed() {
  if (escrever==true && key!=BACKSPACE && keyCode!=SHIFT && keyCode!=ENTER && anagramas.size()<16 && keyCode!=20) {
    anagramas.add(key);
  } 
  println(anagramas);
  println(Npos);
  if (keyCode==ENTER) {
    escrever=false;
  }
  if (keyCode==BACKSPACE && anagramas.size()>=1 && escrever==true)
    anagramas.remove(anagramas.size()-1);
  if (keyCode==BACKSPACE && Npos.size()>=1 && posicoes==true)
    Npos.remove(Npos.size()-1);
  if (posicoes && Npos.size()<=1 && keyCode>47 && keyCode<58) {
    Npos.add(transformaKeyemNumero(keyCode));
  }
}
