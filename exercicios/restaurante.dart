/*15. Você tem um restaurante que funciona das 8h às 20h. Se um cliente chegar fora desse
horário, ele deve ser informado de que o restaurante está fechado. Além disso, se o cliente
vier entre as 14h e as 16h, ele deve ser informado de que é a hora do almoço. */
// tres jeitos: input de hora , gerando de forma aleatoria ou pegando do sistema

import 'dart:math';
import 'dart:io';

void main() {

    stdout.writeln('digite a hora de entrada');
    int input = int.parse(stdin.readLineSync()!);
    stdout.writeln('sua hora: $input');
    print(input);

    Random random = new Random();
    int randomNumber = random.nextInt(12) + 8;
    print(randomNumber);
    
    if(input > 20 || input < 8){
      print("está fechado");
    }
    else if (input >= 14 || input <= 16){
      print("hora do almoço");
    }
    else {
      print("estamos abertos");
    }
 
}
