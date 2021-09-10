abstract class Pessoa {
  String? _nome;
  int? _idade;
  String? _genero;
  String? _email;

  Pessoa(
      {required String nome,
      required int idade,
      required String genero,
      required String email}) {
    this._nome = nome;
    this._idade = idade;
    this._genero = genero;
    this._email = email;
  }

// getters e setters
// métodos
}

class Funcionario extends Pessoa {
  String? _cargo;

  Funcionario(
      {required String nome,
      required int idade,
      required String genero,
      required String email,
      required String cargo})
      : this._cargo = cargo,
        super(nome, idade, genero, email);

// getters e setters
// métodos
}
