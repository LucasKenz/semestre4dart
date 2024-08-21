import 'dart:io';

void main(){

        int numero = int.parse(stdin.readLineSync()!);
        int horas = int.parse(stdin.readLineSync()!);
        double salario = double.parse(stdin.readLineSync()!);
        double resultado = horas * salario;

        stdout.writeln("NUMBER = " + numero.toString());
        stdout.writeln("SALARY = U\$ " + resultado.toStringAsFixed(2));
    

}