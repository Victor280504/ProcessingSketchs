int transformaKeyemNumero(int code) {
  int valorNumerico[]= new int[10];
  int valorASCII[]= new int[10];
  int numeroConvertido=0;
  for (int i=0; i<valorNumerico.length; i++) {// definindo valores
    valorNumerico[i]=i;
    valorASCII[i]=48+i;
    //println(valorNumerico[i], valorASCII[i]);
  }
  for (int i=0; i<valorNumerico.length; i++) {// fazendo a análise
    if (valorASCII[i]==code) {
      numeroConvertido=valorNumerico[i];
    }
  }
  return numeroConvertido;
}
int pegaValorDoNpos() {
  int valorFinal=1;
  int n=1;
  for (int i=1; i<=Npos.size(); i++) {
    valorFinal=valorFinal+(Npos.get(Npos.size()-i)*n);
    n=n*10;
  }
  if (valorFinal<33)
    return valorFinal;
  else {
    println("exedeu a memória otário, quer travar tudo??? :/");
    return 1;
  }
}
int pegaValorDoAnagramas() {
  int n=0;
  for (int i=0; i<anagramas.size(); i++) {
    if (anagramas.get(i)!=' ') {
      n++;
    }
  }
  return n;
}

int permutacao(int n) { 
  int fatoracao=1;
  int resultado=1;
  int testeIgualdade=0;
  for (int j=0; j<n; j++) {
    fatoracao=n-j;
    resultado=resultado*fatoracao;
  }
  //for (int i=0; i< anagramas.size(); i++) {
  //  for (int j=0; j< anagramas.size(); j++) {
  //    //if (anagramas.hasValue(anagramas.get(1))) {
  //    //  testeIgualdade++;
  //    //}
  //  }
  //}
  println("permutacoes:", resultado);
  return resultado;
}

int arranjo(int n, int p) {
  int fatoracao=1;
  int resultado=1;
  for (int j=0; j<p; j++) {
    fatoracao=n-j;
    resultado=resultado*fatoracao;
  }
  println("arranjos:", resultado);
  return resultado;
}

int combinacao(int n, int p) {
  int resultado;
  resultado= arranjo(n, p)/permutacao(p);
  println("combinacao:", resultado);
  return resultado;
}
