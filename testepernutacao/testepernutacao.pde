//Algoritmo de permutação simples, fazer uma aplicação gráfica que mostre anagramas e ir evoluindo de acordo com os assuntos  //<>//

int permutacao(int n) { //mudar as coisas de lugar, ou seja , a ordem dos elementos de um mesmo conjunto cria coisas diferentes
  // De quantas maneiras diferentes isso pode ser organizado??
  // A ORDEM IMPORTA
  int fatoracao=1;
  int resultado=1;
  for (int j=0; j<n; j++) {
    fatoracao=n-j;
    resultado=resultado*fatoracao;
  }
  return resultado;
}
void setup() {
  println(combinacao(5, 2));
}
// Aqui a ideia de conjuntos fica mais clara, de uma forma simples, é uma permutação com um n != p
// você tem um número de elementos pra uma determinada quantidade de posiçoes e você vai arranjalos nessas posições
// implicando que uma ordem diferente desses elementos gera resultados diferentes
int arranjo(int n, int p) {
  int fatoracao=1;
  int resultado=1;
  for (int j=0; j<p; j++) {
    fatoracao=n-j;
    resultado=resultado*fatoracao;
  }
  return resultado;
}
// a combinação trabalha com os subconjuntosm, a ordem não importa e os elementos são tratados como independentes
// ou seja, enquanto no arranjo , un sub conjunto {a,c,b} , tem um total de 3! de posiçõesm, para a combinação essas variações de 
//posições não importam , pois se são os mesmos elementos , temos um único resultado.
// logo, um arranjo(total) dividido pela permutação das posições.
int combinacao(int n, int p) {
  int resultado;
  resultado= arranjo(n, p)/permutacao(p);
  return resultado;
}
