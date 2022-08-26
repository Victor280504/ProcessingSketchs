// EXERCÏCIO 1

//int vetor[] = new int [20];
//int j=0;

//print("Letra a : ");
//for (int i=0; i<=vetor.length-1; i++) {
//  j= int(random(vetor.length));
//  vetor[i]= j;
//  print(vetor[i], "  ");// a
//}

//println();
//print("Letra b :", j); //b
//println();
//print("Letra c :", vetor[j]);
//println();
//print("Letra d :", vetor[j-1]);
//println();
//print("Letra e :", vetor[j+1]);

//-------------------------------------------------------------------------------------------------------
//EXERCÍCIO 2

//int vetor[] = new int[10];
//void setup() {
//  size(200, 200);
// println("Valores armazenados");
//  for (int i=0; i<=vetor.length-1; i++) {
//    vetor[i]= int(random(20, 150));
//    desenho(0, i*20, vetor[i]);
//    print(vetor[i], "  ");
//  }
//}
//void desenho(int x, int y, int tam) {
//  rect(x, y, tam, 20);
//}

//-------------------------------------------------------------------------------------------------------
//EXERCÍCIO 3


//int[] vetor= {int(random(0, 255)), int(random(0, 255)), int(random(0, 255))};
//int[] t;
//int counter=0;
//void setup() {
//  size(200, 200);
//  t=inverter(vetor);
//}
//void draw() {
//  background(255);
//  fill(t[0], t[1], t[2]);
//  rectMode(CENTER);
//  rect(width/2, height/2, 50, 50);
//  if (counter%2==0) {
//    fill(0);
//    text("COR ORIGINAL", 20, 20);
//  } else {
//    fill(0);
//    text("COR INVERTIDA", 20, 20);
//  }
//}
//void mousePressed() {
//  t=inverter(vetor);
//  counter++;
//}
//int[] inverter(int[] teste) {
//  for (int i=0; i < teste.length; i++) {
//    teste[i]= 255- teste[i];
//    println(teste[i], " ");
//  }
//  return teste;
//}

//-------------------------------------------------------------------------------------------------------
//EXERCÍCIO 4

//void setup() {
//  int[] vetor= new int[30];
//  size(600, 100);
//  for (int i=0; i < vetor.length; i++) {
//    vetor[i]= (int) random(0, 256); //<>//
//    println(vetor);
//  }
//  desenho(vetor);
//}
//void desenho(int[]massa) {
//  int counter=0;
//  println("Cores :");
//  for (int j=0; j <10; j++) {
//    fill(massa[counter], massa[counter+1], massa[counter+2]);
//    print( j+1, "-", "(", massa[counter], ",", massa[counter+1], ",", massa[counter+2], ")" );
//    circle(j*60+30, 50, width/10);
//    if (counter<massa.length-3)
//      counter+=3;
//  }
//}
