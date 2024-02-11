void main(){
  List<String> lista = ["Gato","Perro","Mono","Gato","Perro"];
 List<String> unicos = [];

  for (int i = 0; i < lista.length; i++) {
    if (!unicos.contains(lista[i])) {
      unicos.add(lista[i]);
    }
  }

  print(unicos);


}