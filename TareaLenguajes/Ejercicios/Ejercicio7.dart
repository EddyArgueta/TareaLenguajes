void main() {
  List<int> lista = [34, 12, 59, 8, 39, 87, 29];
  int minimo = lista[0];

  for (int i = 1; i < lista.length; i++) {
    if (lista[i] < minimo) {
      minimo = lista[i];
    }
  }

  print('El numero más pequeño es: $minimo');
}