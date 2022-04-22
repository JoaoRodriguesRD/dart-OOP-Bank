import 'cliente.dart';

class Conta {
  late num agencia;
  late num numeroConta;
  late num saldoConta;
  late Cliente cliente;

  Conta(this.agencia, this.numeroConta, this.cliente){
    saldoConta = 0;
  }
  @override
  String toString() {
    return '$agencia, $numeroConta, $cliente, SALDO: $saldoConta';
  }
}
