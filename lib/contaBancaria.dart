class ContaBancaria<T> {
  T numeroConta;
  double saldo;

  ContaBancaria(this.numeroConta, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      throw Exception('Saldo insuficiente');
    }
  }

  @override
  String toString() {
    return 'Conta: $numeroConta, Saldo: $saldo';
  }
}

void main() {
  var contaCorrente = ContaBancaria<int>(12345, 1000.0);
  var contaPoupanca = ContaBancaria<String>('ABC123', 500.0);

  contaCorrente.depositar(200.0);
  contaPoupanca.sacar(100.0);

  print(contaCorrente);
  print(contaPoupanca);
}
