void main() {
  //Este programa pide el promedio de los numeros dentro de una lista
  List<double> lista = [1, 4, 7, 10, 15];
  double promedio = calcularPromedio(lista);

  print('Lista: $lista');
  print('Promedio: $promedio');
}

//Un double seria mas exacto que trabajarlo con enteros
double calcularPromedio(List<double> lista) 
{
  if (lista.isEmpty) 
  {
    //Si mal no recuerdo, el throw lo vimos en la clase de await
    throw ArgumentError('La lista está vacía');
  }

  //La suma va a empezar de 0
  double suma = 0;
  for (var elemento in lista) 
  {
    suma += elemento;
  }

  //Y con este return haremos los calculos, sumamos los elementos de la lista
  //Y los dividimos entre el numero de elementos que contenga
  return suma / lista.length;
}