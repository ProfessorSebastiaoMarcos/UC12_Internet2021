void main() {
  //Estrutura de dados do tipo array
  var compras = ['Macarrão', 'Feijão', 'Pão', 'Manteiga'];

  //Exibindo um array
  print('Lista de compras: $compras');

  print('Nome do primeiro elemento: ${compras[0]}');
  print('Nome do primeiro elemento: ${compras[1]}');
  print('Nome do primeiro elemento: ${compras[2]}');

  //Out of range: ERRO
  //print('Nome do primeiro elemento: ${compras[5]}');

  compras[0] = 'Arroz';
  //Exibir o array novamente
  print('Lista de compras: $compras');

  //Criando array numérico
  var pares = [0, 2, 4, 6];
  print('Lista de números pares: $pares');
  print('-----------------------------------------');

  //Métodos utilizados em arrays
  /**
   * first() : Retorna o primeiro elemento do Array
   * last() : Retorna o último elemento do Array
   * isEmpty() : Retorna true se a lista está vazia, caso contrário, false.
   * length() : Retorna o tamanho do Array
   */

  //Declarando o array
  var listaNomes = ['José Maria', 'Pedro da Silva', 'Cristina Pereira'];

  print('Primeiro nome: ${listaNomes.first}');
  print(('Último nome: ${listaNomes.last}'));
  print('O array está vazio? ${listaNomes.isEmpty}');
  print('Tamanho do Array: ${listaNomes.length}');
}
