void main() {
  List<int> listaNumeros = [1, 2, 3, 4, 5];
  print(calcularSuma(numeros: listaNumeros));
}

int calcularSuma({required List<int> numeros}) {
  int sumaTotal = 0;
  for (int numeroActual in numeros) {
    sumaTotal += numeroActual;
  }
  return sumaTotal;
}