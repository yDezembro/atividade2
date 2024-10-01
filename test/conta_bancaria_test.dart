import 'package:test/test.dart';
import 'package:atividade02/contaBancaria.dart';

void main() {
  group('ContaBancaria', () {
    test('Deve depositar o valor corretamente', () {
      var conta = ContaBancaria<int>(12345, 1000.0);
      conta.depositar(200.0);
      expect(conta.saldo, 1200.0);
    });

    test('Deve sacar o valor corretamente', () {
      var conta = ContaBancaria<int>(12345, 1000.0);
      conta.sacar(200.0);
      expect(conta.saldo, 800.0);
    });

    test('Deve lançar exceção ao tentar sacar mais do que o saldo', () {
      var conta = ContaBancaria<int>(12345, 1000.0);
      expect(() => conta.sacar(2000.0), throwsException);
    });
  });
}
