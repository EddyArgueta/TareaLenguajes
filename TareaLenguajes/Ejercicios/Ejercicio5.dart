void main() {
  //Con este programa buscamos, mediante un boolean decir si
  //Una lista es 'true' si va ascendente
  //Y seria 'false' si va descendente
  
  List<int> lista = [5, 2, 14, 6, 8];
  
  //La vamos a mostrar primeramente tal como está
  print('Lista original: $lista');

  // Ordenar la lista en orden ascendente
  ordenarLista(true, lista);
  print('Lista ordenada ascendente: $lista');

  // Ordenar la lista en orden descendente
  ordenarLista(false, lista);
  print('Lista ordenada descendente: $lista');
}

//Con esta funcion vamos a determinar si va o no para arriba
void ordenarLista(bool ascendente, List<int> lista)
{
  if (ascendente) 
  {
    lista.sort();
  } else 
  {
    lista.sort((a, b) => b.compareTo(a));
  }
}
