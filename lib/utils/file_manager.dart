import 'dart:io';

class FileManager {

  late String pathCliente;
  late String pathContas;


  FileManager(){
    pathCliente = './files/clientes.csv';
    pathContas = './files/contas.csv';
  }
  
  FileManager.fromFileManager(String newPathCliente, String newPathContas){
     pathCliente = newPathCliente;
     pathContas = newPathContas;
  }

  void addCliente(String nome, String cpf) {
    String arquive = File(pathCliente).readAsStringSync();
    File(pathCliente)
        .writeAsStringSync(arquive + "\n" + "$nome, $cpf");
  }

  void addConta(num agencia, num conta, String cpf) {
    String arquive = File(pathContas).readAsStringSync();
    File(pathContas)
        .writeAsStringSync(arquive + "\n" + "$agencia, $conta, $cpf");
  }

  void listarClientes() {
    List<String> contents = File(pathCliente).readAsLinesSync();
    for (var line in contents) {
      print(line);
    }
  }

  void listarContas() {
    List<String> contents = File(pathContas).readAsLinesSync();
    for (var line in contents) {
      print(line);
    }
  }

  void realizarDeposito() {
    print("REALIZAR DEPOSITO");
  }

  void realizarSaque() {
    print("REALIZAR SAQUE");
  }
  
}
