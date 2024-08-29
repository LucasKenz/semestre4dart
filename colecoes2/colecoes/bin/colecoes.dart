import 'package:colecoes/colecoes.dart' as colecoes;

void main(List<String> arguments) {
  // tuplas
  var tuplas = ('ana', 18, true, 43);
  print(tuplas);
  print(tuplas.runtimeType);
  print(tuplas.$1);

  // conjuntos ou set
  var letras = {'a', 'a'}; // em um conjunto, como em matemática, ordem e repetições não importa
  // podemos passar uma lista para um set para fazer uma otimização muito melhor pois conjunto não tem repetidos
  // {1,2} = {2,1} = {1,1,1,1,2}...

  var teste = <String> {}; // conjunto de Strings
  var teste2 = <String, int> {}; // conjunto de Strings com valores associados ints

  // união intersecção e diferença
  var A = {1,2,3,4,5,6};
  var B = {1,3,7};
  print(A.union(B)); // 1 2 3 4 5 6 7 -> mas não sei se está nessa ordem
  // ordenar conjuntos não faz sentido, faria sentido transformar em lista e ordenar com sort
  // é comutativo, não importa a ordem de a e b na union
  print(A.intersection(B)); // 1, 3 -> Comutativa
  print(A.difference(B)); // A \ B = {2, 4, 5, 6} -> não comutativa
  print(A.difference(B)); // B \ A = {7}

  //excercício: conjunto que fala portugues
  var portugues = {'brasil', 'portugual'};

  // paises europeus
  var europeus = {'portugual', 'espanha', 'alemanha'};

  //fazer operações com conjuntos para mostrar
  // - Todos os países em que se fala português e todos os países da Europa.
  // - Todos os países em que se fala português e que são europeus.
  // - Todos os países em que se fala português e que não são europeus.
  // - Todos os países exceto aqueles em que se fala português e que são europeus (simultaneamente)

  print(portugues.union(europeus));
  print(portugues.intersection(europeus));
  print(portugues.union(europeus).difference(portugues));
  print(portugues.union(europeus).difference(europeus.intersection(portugues)));

  // mapas

  var pessoa = {}; // mapa de dynamic ; dynamic, chave é dynamic e valor também é dynamic

  var pessoa2 = { // mapa object object, pois na chave pode receber qualquer valor, e no valor também
    // sempre puxa o comum entre todas os pares chave e valor de todos as chaves e valores
    'nome' : 'Ana', // String String
     1 : 18, // St
  };
  Map<String, int> m1 = {}; // ambas criam um mapa com chave recebe string e valor recebe int
  var m2 = <String, int> {}; // controle estático dos tipos de chave e valor

  var pessoa3 = {
    'nome' : 'Ana',
    'nome': 'cristina' // prevalece sempre o ultimo com mesmo nome de variável

  };

  pessoa['nome'] = 'Ana';
  pessoa['nome'] = 'cristina'; // sempre prevalece o último
  // chaves punicas e valores podem repetir

  var pessoa4 = <String, dynamic> {
    'nome' : "ana",
    'idade' : 18

  };
 // print(pessoa4['nome'].) // nesse momento completa com métodos de object
 print(pessoa4['nome'].toUpperCase()); // tive que escreve manualmente, pois não infere um método de String para dynamic

 final nome = pessoa4['nome'] as String; // type casting, assim forçamos o tipo String ao valor de nome
 print(nome.toUpperCase()); // assim o autopreenchimento com métodos de String é aplicado

 //final idade = pessoa4['idade'] as String;
 //print(idade.toUpperCase()); 
 //// aqui fizemos um type casting, UMA PROMESSA, o compilador saiu de cena, tomamos erro de tempo de execução
 // já que prometemos mexer com String e mexemos com int com métodos de String.

 // mapas iteração:
 // podemos usar para iterar: keys, values e entries

 var pessoa5 = {
  'nome' :'ana',
  'idade' : 5
 };
 // use um for each para iterar sobre as chaves
 // use um for each para iterar sobre as valores
 // use um for each para iterar sobre as entries (par de chave e valor)
  pessoa5.keys.forEach((key) {
    print(key);
  });
  pessoa5.values.forEach((value) {
    print(value);
  });
  pessoa5.forEach((key, value) {
    print(key);
    print(value);
  });
  
  for (final key in pessoa.keys){
    print(key);
  }
  for (final key in pessoa.values){
    print(key);
  }
  for (final key in pessoa.entries){
    print(key);
  }

  // mapa de null : null
  var mapaDeNull = {null: null};

  // coleçoes de coleções, quero guardar uma coleção de filmes com:
  //filme: titulo, genero, colecões de notas
  // lista de maps, cada map é um filme com chave e valor, e em notas é uma lista de int / num
  List<Map <String, Object> > filmes = []; // lista de maps, com campos string, e valores objects
  //ou
  var filmes2 = <Map <String,Object?>? > []; // outra opção

  List? filmes3 = <Map <String,Object?>? > []; // aqui map pode aceitar uma lista vazia, um filme pode ter nada

  // se quero me prevenir para algum valor null, coloco em object
  // quando quero me preparar para null, coloco um ? atrás do tipo

  var filme = {
    "título" : "ilha do medo",
    "genero" : "suspense",
    "notas" : [10, 10, 9.5],
    null: null,
    null: 2
  };


  print(filme[null]);

  var idadePedro = 17;
  var ideadeCristina = 18;
  var maioresDeIdade = [
    'Ana',
    'João',
    if(idadePedro >= 18) 'Pedro',
    if (ideadeCristina >= 18) 'Cristina,'
  ]; // colection if, para adicionar se a condição for satisfeita

  // collection-for
  var nomes1 = ['joão', 'ana'];
  var nomes2 = [
    'cristina',
    ...nomes1 // essa lista tem 2 elementos cristina e uma lista com joao e ana
  ];

  var nomes3 = ['joão', 'ana'];
  var nomes24 = [
    'cristina',
    for (var nome in nomes1) nome
  ];

}
