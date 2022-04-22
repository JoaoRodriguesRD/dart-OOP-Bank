import 'cliente.dart';
import 'conta.dart';
import 'financas.dart';

class Banco {
  late List<Conta> contas;
  late List<Cliente> clientes;
  String? nomeDoBanco;
  late Financas financas;

  Banco(this.nomeDoBanco) {
    clientes = List.empty(growable: true);
    contas = List.empty(growable: true);
    financas = Financas(this);
  }

  @override
  String toString() {
    return '$nomeDoBanco';
  }

  void adicionarCliente() {
    Cliente cliente = financas.pedirCliente();
    if (financas.haveCliente(cliente)) {
      print("Cliente já se encontra em nossa base de dados");
      return;
    }
    financas.cadastrarCliente(cliente);
    print("Cliente adicionado a nossa base de dados");
  }

  void adicionarConta() {
    print("INCLUIR CONTA");
    Conta conta = financas.pedirConta();
    String cpf = financas.pedirCPF();
    Cliente? cliente = financas.getClienteByCPF(cpf);
    if (cliente == null) {
      print(
          "nenhum cliente com cpf: $cpf encontrado na nossa base de dados...");
      return;
    }
    if (financas.haveConta(conta)) {
      print("Conta já se encontra em nossa base de dados");
      return;
    }

    financas.cadastrarConta(conta, cliente);
    print("Conta cadastrada com sucesso");
  }

  

  void listarClientes() {
    print("Nossos clientes cadastrados");
    financas.listarClientes();
  }

  void listarContas() {
    print("Nossas contas cadastradas");
    financas.listarContas();
  }

  void realizarDeposito() {
    Conta conta = financas.pedirConta();

    if (financas.haveConta(conta)) {
      num valorDeposito = financas.pedirValorDeposito();
      financas.realizarDeposito(conta, valorDeposito);
      print("deposito realizado com sucesso!");
      return;
    }

    print("Conta não encontrada para realizar deposito...");

    return;
  }

  void realizarSaque() {
    Conta conta = financas.pedirConta();

    if (financas.haveConta(conta)) {
      num valorSaque = financas.pedirValorSaque();
      if (financas.canRealizarSaque(conta, valorSaque)) {
        financas.realizarSaque(conta, valorSaque);
        print("saque realizado com sucesso!");
      } else {
        print("Sinto muito, valor indisponivel para sacar...");
      }
      return;
    } else {
      print("Conta não encontrada para realizar deposito...");
    }
    return;
  }
}
