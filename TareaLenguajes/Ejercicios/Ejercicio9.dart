void main() {
  final List<int> listaNumeros = [1, 2, 3, 4, 5];
  final int sumaTotal = calcularSuma(numeros: listaNumeros);
  print("la suma es: $sumaTotal");
}

int calcularSuma({required List<int> numeros}) {
  int sumaTotal = 0;
  for (int numeroActual in numeros) {
    sumaTotal += numeroActual;
  }
  return sumaTotal;
}
