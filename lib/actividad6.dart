//funcion para calcular factorial
int factorial(int n) {
  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

//funcion para calcular potencia
num potencia(num base, int exponente) {
  num resultado = 1;
  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }
  return resultado;
}

//calcular area de un triangulo
double areaTriangulo(double b, double a) {
  return (b * a) / 2;
}
