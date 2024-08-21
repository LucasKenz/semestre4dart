 //Exercicio 16
import 'dart:math';
import 'dart:io';

void main(){
    List livros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List nomes = ["House of Leaves", "Illusion of Living", "MySQL avancado", "Python para iniciantes", "Hello World", "Cinema, o livro do filme", "Creatures of Deception", "8 Homens e um Pao", "9, o ladrao", "10 Mandamentos"];
    List ocupacao = [0, 1, 1, 0, 0, 0, 0, 1, 0, 0];
    List procura = [0, 1, 1, 0, 0, 0, 1, 1, 1, 1];
    int escolha = 1;
    stdout.writeln("Bem vindo a biblioteca do bairro.");
    while(escolha != 0){
        stdout.writeln("Qual o seu livro de escolha? (0 a 9)");
        int input = int.parse(stdin.readLineSync()!);

        if(input > 9 || input < 0){
        while(input > 9 || input < 0){
        stdout.writeln("Desculpe, esse livro nao existe.");
        stdout.writeln("Esta interessado em algum da lista? (0 nao, 1 sim)");
        escolha = int.parse(stdin.readLineSync()!);
        if(escolha == 0){
            break;
        }
        stdout.writeln("Qual o seu livro de escolha? (0 a 9)");
        input = int.parse(stdin.readLineSync()!);
        }
        }
        if(input >= 0 && input <=9){
        stdout.writeln("Ah sim ${nomes[input]}, bela escolha");
        if(ocupacao[input] == 0){
            stdout.writeln("Que sorte, ele esta disponivel. Aqui, todo seu.");
            if(procura[input] == 0){
            stdout.writeln("Como ele não e um livro muito procurado, voce pode devolver ele em duas semanas.");
            }
            else{
            stdout.writeln("Como ele e um livro muito procurado, voce tem que devolver ele em uma semana.");
            }
            stdout.writeln("Se nao devolver no prazo, uma multa sera aplicada de acordo, mas voce parece uma pessoa confiavel.");
            escolha = 0;
        }
        else{
            stdout.writeln("Que pena, alguem esta com ele nesse momento, desculpe.");
            stdout.writeln("Esta interessado em mais algum? (0 nao, 1 sim)");
            escolha = int.parse(stdin.readLineSync()!);
        }
        }

    }
    stdout.writeln("Adeus, volte quando quiser buscar conhecimento.");
}