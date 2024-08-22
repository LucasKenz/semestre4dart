import 'dart:math';
import 'dart:io';

// Enum que representa as opções do jogo
enum Jogada { pedra, papel, tesoura, sair }

void main() {
  jogo();
}

void jogo() {
  var rng = Random();
  while (true) {
    print('Escolha uma jogada:');
    print('1. Pedra');
    print('2. Papel');
    print('3. Tesoura');
    print('4. Sair');

    // Captura a opção do usuário
    String? input = stdin.readLineSync();
    int? opcaoUsuario = int.tryParse(input ?? '');

    // Valida a entrada do usuário
    if (opcaoUsuario == null || opcaoUsuario < 1 || opcaoUsuario > 4) {
      print('Opção inválida, tente novamente.');
      continue;
    }

    // Se o usuário escolher sair, interrompe o loop
    if (opcaoUsuario == 4) {
      print('Você escolheu sair. Até a próxima!');
      break;
    }

    // Sorteia a opção do computador (1 a 3)
    int opcaoComputador = rng.nextInt(3) + 1;

    // Mapeia a opção do usuário e do computador para o enum
    Jogada jogadaUsuario = Jogada.values[opcaoUsuario - 1];
    Jogada jogadaComputador = Jogada.values[opcaoComputador - 1];

    // Exibe as jogadas de cada um
    print('Jogador (${jogadaUsuario.name}) vs (${jogadaComputador.name}) Computador');

    // Verifica o resultado do jogo
    if (jogadaUsuario == jogadaComputador) {
      print('Empate!');
    } else if ((jogadaUsuario == Jogada.pedra && jogadaComputador == Jogada.tesoura) ||
        (jogadaUsuario == Jogada.papel && jogadaComputador == Jogada.pedra) ||
        (jogadaUsuario == Jogada.tesoura && jogadaComputador == Jogada.papel)) {
      print('Você venceu!');
    } else {
      print('Computador venceu!');
    }

    // Dorme 3 segundos para dar tempo de ver o resultado
    sleep(Duration(seconds: 3));
  }
}

/* - novos requisitos
  - permitir ao usuário que escolha quantas rodadas deseja
  - a cada rodada, dar um ponto para o vencedor
  - mostrar o vencedor do jogo total no final
  - se empatar, fazer "penaltis", ou seja, fazer uma única nova rodada até que alguém vença
  - Alterar a probabilidade de ganho: computador vence cada rodada com 60% de chance
  - Implementar o jogo inteiro utilizando funções
  */