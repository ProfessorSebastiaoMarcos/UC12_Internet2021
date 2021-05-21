void main() {
  //Condicionais
  //Declarando variáveis
  int a = 10;
  int b = 5;

  //condicional simples
  if (a > b) {
    print('Informação verdadeira');
  } else {
    print('Informação falsa');
  }

  String nome = 'John';
  //Condicional
  if (nome != 'Jane') {
    print('Informação Verdadeira');
  } else {
    print('Informação Falsa');
  }

  //condicional encadeada
  double media = 4.0;

  if (media > 7.5 && media <= 10) {
    print('Aluno passou de ano!');
  } else if (media >= 5 && media < 7.5) {
    print('Aluno em recuperação');
  } else {
    print('Aluno Reprovado!');
  }
}
