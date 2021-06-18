class Conta {
  Cliente cliente;
  String nomeBanco;
  int agencia;
  int codigo;
  double saldo;

  Conta(
      {required this.cliente,
      required this.nomeBanco,
      required this.agencia,
      required this.codigo,
      this.saldo = 5000.0});
}

class Cliente {
  String nomeCliente;
  String cpf;
  String celular;

  Cliente(
      {required this.nomeCliente, required this.cpf, required this.celular});
}

void main() {
  //Composição
  var conta1 = new Conta(
      nomeBanco: 'Banco do Brasil',
      agencia: 1226,
      codigo: 013,
      cliente: new Cliente(
          nomeCliente: 'José da Silva',
          cpf: '123.456.789-12',
          celular: '(32)9999-9999'
      )
  );

  print('================================================');
  print('DADOS BANCÁRIOS');
  print('------------------------------------------------');
  print('Nome do Banco: ${conta1.nomeBanco}');
  print('Agência Bancária: ${conta1.agencia}');
  print('Nome do cliente: ${conta1.cliente.nomeCliente}');
  print('CPF do cliente: ${conta1.cliente.cpf}');
  print('Saldo em conta: ${conta1.saldo}');
  print('------------------------------------------------');
}
