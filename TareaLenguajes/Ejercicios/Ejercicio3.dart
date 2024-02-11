void main() {
  // Inicializamos la lista con los dos primeros números de Fibonacci
  //Ya que siempre seran el 0 y el 1
  List<int> fibonacci = [0, 1]; 

  //De alli, Fibonacci es una suma de secuencias de los primeros 2 numeros
  //Empezaremos con 2, ya que le sigue a la suma de 1+1
  //E iria 2+1, 3+2, y asi sucesivamente hasta llegar a los primeros 15 numeros
  for (int i = 2; i < 15; i++) 
  {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  //Retornaremos el resultado de la lista de Fibonacci
  print('Los primeros 15 números de la sucesión de Fibonacci son: $fibonacci');
}
