import '../lib/actividad6.dart';
import 'dart:io';

void main() {
  print(factorial(5));
  print(potencia(5, 3));
  stdout.write("\nIngrese la base del triángulo: ");
  double baseTriangulo = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del triángulo: ");
  double altura = double.parse(stdin.readLineSync()!);

  print("Área del triángulo = ${areaTriangulo(baseTriangulo, altura)}");
}
