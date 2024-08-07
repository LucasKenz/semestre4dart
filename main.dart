import 'dart:math';
import 'dart:io';

void main() {

    stdout.writeln('digite um número');
    int input = int.parse(stdin.readLineSync()!);
    stdout.writeln('seu número: $input');
    print(input);

    Random random = new Random();
    int randomNumber = random.nextInt(100);
    print(randomNumber);
    
    while (input != randomNumber){
            if (input < randomNumber){
                stdout.writeln('errou');
                print("seu número é menor que o número");
                stdout.writeln('digite um número: ');
                input = int.parse(stdin.readLineSync()!);
                stdout.writeln('seu número: $input');
            } else {
                stdout.writeln('errou');
                print("seu número é maior que o número");
                stdout.writeln('digite um número: ');
                input = int.parse(stdin.readLineSync()!);
                stdout.writeln('seu número: $input');
            }

        }
}