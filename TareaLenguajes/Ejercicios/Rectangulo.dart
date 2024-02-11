//Con esta clase buscamos calcular el area de un rectangulo
//Aqui declararemos las variables y constructores

class Rectangulo {
  double largo;
  double ancho;

  //Constructor con ambas propiedades obligatorias
  Rectangulo(this.largo, this.ancho);

  //Método para calcular el área
  double calcularArea() 
  {
    return largo * ancho;
  }
}