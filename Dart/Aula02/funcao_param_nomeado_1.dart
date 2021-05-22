//Parâmetros nomeados em função
//ajuda na clareza do código
//Evitando confusão com os parâmetros posicionais

import 'funcao_void.dart';

void main() {
  //Chamando a função com parâmetro posicional
  exibirCadastro(funcao: 'Gerente', funcionario: 'John Doe', salario: 1500);
}

//Usando required: nova funcionalidade do Dart
exibirCadastro(
    {required String funcionario,
    required String funcao,
    required double salario}) {
      
  linha();
  print('Nome do funcionário: $funcionario');
  print('Nome do Função: $funcao');
  print('Nome do Salário: $salario');
  linha();

  return 'Tudo ok!';
}
