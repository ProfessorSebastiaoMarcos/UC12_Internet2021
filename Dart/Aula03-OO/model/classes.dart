class Banco {
  //Atributos
  String nome;
  int conta;

  //Método Construtor
  Banco(this.nome, this.conta);

  //Método para imprimir o usuário
  imprimirUsuario() {
    print(this.nome);
    print(this.conta);
  }
}
