import 'funcao_void.dart';

void main() {
  //Declarar uma variável e passar uma função
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);

  //Saída
  print('Média Aritmética');
  linha();
  print('A média é: $media');
  print('A divisão é: $divisao');
}

//Criar as funções
//Função média
double calcularMedia(double n1, double n2, double n3, double n4) {
  //Cálculo
  double media = (n1 + n2 + n3 + n4) / 4;

  //Retorno com o valores
  return media;
}

double calcularDivisao(double n1, double n2) {
  double div = (n1 / n2);
  return div;
}
