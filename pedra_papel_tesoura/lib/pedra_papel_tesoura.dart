// importar pacote para entrada e saida

// importar pacote para geração de valores

// criar um enum que representa as opções do jogo

// o usuário pode querer sair ou selecionar 1 de 3 jogadas e também sair
import 'dart:math';
import 'dart:io';

enum DiaDaSemana {pedra, papel, tesoura, sair}

void jogo(){
  // loop que continua enquanto o usuário deseja continuar

    // dentro do for
    // exibe o menu

    // captura a opção do usuário, validando

    // se o usuário digitar 4 sair

    // senão sortear a opção do computador

    // mapear opção d usuário de int para enum

    //mapear opção do computador de int para enum

    //exibir as opções ed cada um

    // Jogador(pedra) vs (papel)Computador // exata saida de como tem que ser

    // verificar se houve empate ou se algúme  venceu

    // mostrar resultado, claro

    // a cada rodada, durma 3 segundos para dar tempo de ver o resultado

    stdout.writeln('digite um número');
    num input;
    stdout.writeln('seu número: $input');
    print(input);

    Random random = new Random();
    int randomNumber = random.nextInt(100);
    print(randomNumber);

     while (input != 4){
        if (input != randomNumber){
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
