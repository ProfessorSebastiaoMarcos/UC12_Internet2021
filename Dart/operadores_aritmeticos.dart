void main() {
  //Operadores Aritméticos
  //+, -, *, /, %

  //Declarando variável
  int a = 20;
  int b = 5;

  //Operadores
  var soma = a + b;
  var subt = a - b;
  var produto = a * b;
  var divisao = a / b;
  var restoDiv = a % b;

  //Saída
  print('A soma de $a + $b = $soma');
  print('A subtração de $a - $b = $subt');
  print('O produto de $a * $b = $produto');
  print('A divisão de $a / $b = $divisao');
  print('O resto da divisão de $a % $b = $restoDiv');

  //Operadores resumidos
  int num = 100;
  num += 20; //pode ser *= ou /=
  num -= 10;

  print('Número: $num');
}


