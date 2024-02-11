import 'Rectangulo.dart';

void main() {
  //Este programa es de crear un rectangulo, pero que venga de una clase para incluirlo en el main

  //Ya que es un double, se le puede agregar el .0 al final, pero no es necesario del todo
  Rectangulo rectangulo = Rectangulo(5, 3);

  //Con este Print ya podemos hacer los calculos del Rectangulo
  print('El área del rectángulo es: ${rectangulo.calcularArea()}');
}