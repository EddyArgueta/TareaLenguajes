void main() {
  //Este programa es para sumar los numeros de una lista sin usar una
  //función propia de dart. Tambien sera con valores ya existentes 
  
  List<int> numeros = [1, 3, 6, 7, 12];
  int suma = 0; //Empezaremos de 0

  for (int i = 0; i < numeros.length; i++) 
  {
    suma += numeros[i];
  }

  //$(Signo del Dolar) significa concatenación
  print('La suma de los números en la lista es: $suma');
}