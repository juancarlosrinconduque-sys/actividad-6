import '../lib/actividad6.dart';
import 'dart:io';

void main() {
  //Primer punto
  int opcion = int.parse(stdin.readLineSync().toString());
  List fibonacci = [];
  switch (opcion) {
    case 1:
      primera();
      break;
    case 2:
      segundo(11);
      break;
    case 3:
      tercero(fibonacci, 10);
      break;
    case 4:
      cuarta();
      break;
  }
}

void primera() {
  print(factorial(5));
  print(potencia(5, 3));
  stdout.write("\nIngrese la base del triángulo: ");
  double baseTriangulo = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura del triángulo: ");
  double altura = double.parse(stdin.readLineSync()!);

  print("Área del triángulo = ${areaTriangulo(baseTriangulo, altura)}");
}

void segundo(int numero) {
  print("${numero % 2 == 0 ? "Es par" : "Es impar"}");
}

void tercero(List lista, int limite) {
  int a, b = 1, c = 0;
  for (int i = 0; i < limite; i++) {
    a = b + c;
    b = c;
    c = a;
    lista.add(a);
  }
  print(lista);
}

// Función para calcular el promedio
double calcularPromedio(List<double> notas) {
  double suma = 0;

  for (int i = 0; i < notas.length; i++) {
    suma += notas[i];
  }

  return suma / notas.length;
}

// Función para clasificar al estudiante
String clasificarEstudiante(double promedio) {
  if (promedio >= 3.0) {
    return "Aprobado";
  } else {
    return "Reprobado";
  }
}

void cuarta() {
  List<double> notas = [];

  print("Ingrese 5 notas:");

  for (int i = 1; i <= 5; i++) {
    stdout.write("Nota $i: ");
    notas.add(double.parse(stdin.readLineSync()!));
  }

  double promedio = calcularPromedio(notas);

  print("\nPromedio: ${promedio.toStringAsFixed(2)}");
  print("Resultado: ${clasificarEstudiante(promedio)}");
}
