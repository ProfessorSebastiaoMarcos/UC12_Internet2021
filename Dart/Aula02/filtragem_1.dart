//Exemplo de filtragem sem o uso do método dart
//Verrendo os elemento de uma lista e colocando em outra

import 'funcao_void.dart';

void main() {
  //Criando a lista de valores
  var valores = [5.5, 7.0, 6.3, 9.7, 10.0, 3.5];

  //Criar uma lista para guaradar valores maiores que 7
  var valoresAcimaMedia = [];

  for (var valor in valores) {
    if (valor >= 7) {
      //Método para adicionar o valor a nova lista
      valoresAcimaMedia.add(valor);
    }
  }

  //Imprimindo os valores
  linha();
  print('Lista origiginal: $valores');
  print('Nova lista: $valoresAcimaMedia');
  linha();
}
