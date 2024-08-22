

import 'dart:io';
import 'dart:math';
enum Opcoes {sair, pedra, papel, tesoura}

void jogo(){
  int escolha = 0;
  int comp = 0;
  int vitJog = 0;
  int vitComp = 0;
  print("Quantas rodadas deseja jogar?");
  int rodadas = int.parse(stdin.readLineSync()!);
  while(rodadas != 0){
    print("****************");
    print("* BEM VINDO!!! *");
    print("*   ESCOLHA    *");
    print("*[1]-Pedra     *");
    print("*[2]-Papel     *");
    print("*[3]-Tesoura   *");
    print("****************");
    escolha = int.parse(stdin.readLineSync()!);
    if(escolha > 3 || escolha < 1){
      print("Por favor, escolha um valor válido");
    }
    else{
      comp = Random().nextInt(3) + 1;
      print("JOGADOR(${Opcoes.values[escolha].name.toUpperCase()}) vs (${Opcoes.values[comp].name.toUpperCase()})COMPUTADOR");
      if (escolha == 1 && comp == 2) {
        print("Papel vence pedra, o computador ganhou um ponto");
        vitComp++;
    } else if (escolha == 2 && comp == 3) {
        print("Tesoura corta papel, o computador ganhou um ponto");
        vitComp++;
    } else if (escolha == 3 && comp == 1) {
        print("Pedra quebra tesoura, o computador ganhou um ponto");
        vitComp++;
    } else if (escolha == 2 && comp == 1) {
        print("Papel vence pedra, o jogador ganhou um ponto");
        vitJog++;
    } else if (escolha == 3 && comp == 2) {
        print("Tesoura corta papel, o jogador ganhou um ponto");
        vitJog++;
    } else if (escolha == 1 && comp == 3) {
        print("Pedra quebra tesoura, o jogador ganhou um ponto");
        vitJog++;
    } else {
        print("Empate");
    }
      sleep(Duration(seconds: 3));
      rodadas-=1;
    }
  }
  print("Vitorias do jogador: $vitJog");
  print("Vitorias do computador: $vitComp");
  while(vitComp == vitJog){
    print("Empate, mais uma rodada para desempate");
    print("****************");
    print("*   ESCOLHA    *");
    print("*[1]-Pedra     *");
    print("*[2]-Papel     *");
    print("*[3]-Tesoura   *");
    print("****************");
    escolha = int.parse(stdin.readLineSync()!);
    if(escolha > 3 || escolha < 1){
      print("Por favor, escolha um valor válido");
    }
    else{
      comp = Random().nextInt(3) + 1;
      print("JOGADOR(${Opcoes.values[escolha].name.toUpperCase()}) vs (${Opcoes.values[comp].name.toUpperCase()})COMPUTADOR");
      if (escolha == 1 && comp == 2) {
        print("Papel vence pedra, o computador ganhou um ponto");
        vitComp++;
      } 
      else if (escolha == 2 && comp == 3) {
        print("Tesoura corta papel, o computador ganhou um ponto");
        vitComp++;
      } 
      else if (escolha == 3 && comp == 1) {
        print("Pedra quebra tesoura, o computador ganhou um ponto");
        vitComp++;
      } 
      else if (escolha == 2 && comp == 1) {
        print("Papel vence pedra, o jogador ganhou um ponto");
        vitJog++;
      } 
      else if (escolha == 3 && comp == 2) {
        print("Tesoura corta papel, o jogador ganhou um ponto");
        vitJog++;
      } 
      else if (escolha == 1 && comp == 3) {
        print("Pedra quebra tesoura, o jogador ganhou um ponto");
        vitJog++;
      } 
      else {
        print("Empate");
      }
      sleep(Duration(seconds: 3));
    }
  }
  print("Vitorias do jogador: $vitJog");
  print("Vitorias do computador: $vitComp");
  if(vitJog > vitComp){
    print("Jogador Ganhou!!!");
  }
  else{
    print("Computador Ganhou!!!");
  }
    // Alterar a probabilidade de ganho: computador vence cada rodada com 60% de chance
    // Implementar o jogo inteiro utilizando funções
}