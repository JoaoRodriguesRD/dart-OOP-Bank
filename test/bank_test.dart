import 'package:bank/banco.dart';
import 'package:bank/financas.dart';
import 'package:test/test.dart';

void main() {
  test('test', () {
    expect(42, 42);
  });

  test('String.split() splits the string on the delimiter', () {
    var string = 'foo,bar,baz';
    expect(string.split(','), equals(['foo', 'bar', 'baz']));
  });

  test('String.trim() removes surrounding whitespace', () {
    var string = '  foo ';
    expect(string.trim(), equals('foo'));
  });
  test('Criar um banco com nome', () {
    Banco b = Banco("Meu banco");
    expect(b.nomeDoBanco, equals('Meu banco'));
  });
  test('Financas funcionando', () {
    Banco b = Banco("Meu banco");
    Financas f = Financas(b);
    f.pedirCPF();
    expect(b.nomeDoBanco, equals('Meu banco'));
  });
}
