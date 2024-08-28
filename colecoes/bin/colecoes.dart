import 'dart:js_interop';

import 'package:colecoes/colecoes.dart' as colecoes;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  var letras = ["A", "B"];
  letras.add(null); // não posso fazer isso pois null é um tipo e a lista de strings não é
  String? nome;
  letras.add(nome); // mesma coisa aqui, 

  var numeros = []; // nasce dynamic
  numeros.add(null); // porque é dynamic podemos atribuir null

  List <String>? letras = [null]; // não aceita o null
  List <String?>? letras = [null]; // aceita o null

  List < List <String?> >? lista; // posso = lista = [[null]]; mas não lista = [null]
  // Lista de lista que pode ter null, pois String? aceita null, 

  
}
