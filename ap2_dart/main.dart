import 'dart:io';

void main() {
  stdout.writeln("Digite seu nome"); // standart Output
  stdin.readLineSync(); // método readLineSync devolve uma String
  String nome = stdin.readLineSync()!;

  String? IdadeOp = stdin.readLineSync();
  if(IdadeOp != null){
    int idade = int.parse(IdadeOp); // pode executar por que sabe que se chegar na linha 10 não será null, pois passou do if
    // o computador sabe que passou do inf e então deixa atribuir
  }

}