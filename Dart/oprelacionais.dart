	void main() {
	//Operadores Relacionais
	/***
	 * ==, !=
	 * >, <
	 * >=, <= 
	 */

	//Declarando variável
	int a = 20;
	int b = 5;

	//Verificando na saída
	print('$a = $b? Resultado: ${a == b}');
	print('$a ≠ $b? Resultado: ${a != b}');
	print('$a > $b? Resultado: ${a > b}');
	print('$a < $b? Resultado: ${a < b}');
	print('$a ≥ $b? Resultado: ${a >= b}');
	print('$a ≤ $b? Resultado: ${a <= b}');

	//Cocando o resultado booleano em uma variável
	bool igual = a == b;
	print('Verifificação de igualdade: $igual');
	}
