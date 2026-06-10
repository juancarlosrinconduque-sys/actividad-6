//funcion para calcular factorial
int factorial(int n) {
  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  return resultado;
}

//funcion para calcular potencia
