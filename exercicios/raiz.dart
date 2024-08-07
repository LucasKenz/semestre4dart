import 'dart:math';
import 'dart:io';

void main() {
  num a = 1;
  num b = -3;
  num c = 2;
  num resultado = ((-b +- sqrt(pow(b,2) - 4 * a * c)) / (2 * a)) ;
  num resultado1 = ((-b + sqrt(pow(b,2) - 4 * a * c)) / (2 * a));
  num resultado2 = ((-b - sqrt(pow(b,2) - 4 * a * c)) / (2 * a));
  print(resultado);
  print("resultadado 1: " + resultado1.toString() + " resultado2: " + resultado2.toString());
}