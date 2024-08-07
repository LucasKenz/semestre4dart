/* Você é um bibliotecário e precisa verificar se um livro pode ser emprestado. Se o livro
estiver disponível e não for um dos mais procurados, ele pode ser emprestado por 14 dias.
Se for um dos mais procurados, só pode ser emprestado por 7 dias. Se o livro não estiver
disponível, ele não pode ser emprestado. */

// criar uma classe para livro com atributos de um livro, um atributo importante é a popularidade
// criar uma lista de objetos da classe livro
// fazer um programa para inserir um numero do livro
// se existir na lista, e a prioridade for 1, deve retirar da lista e imprimir "7 dias para devolução"
// se  na lista, e a prioridade for 2, deve retirar da lista e imprimir "14 dias para devolução"
// se não exibir que não está disponível

// pesquisar por Constructors

abstract class Biblioteca {
  void emprestimo(num popularidade);
}

class Livro {
  final num paginas;
  final num id;
  num popularidade;

  Livro(this.paginas, this.id, this.popularidade);

  void emprestar(){
    popularidade++;
  }
}

void main() {
 Livro livro1 = new Livro(50, 1, 0);
 Livro livro2 = new Livro(70, 2, 1);
 Livro livro3 = new Livro(90, 3, 0);
 Livro livro4 = new Livro(100, 4, 1);

 List lista = [livro1, livro2, livro3, livro4];
 
 // faz o usuario digitar um id
 // 
}