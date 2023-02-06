import 'dart:io';

void main(List<String> args) {
  var nombre = "Daniel";
  print(nombre);
  int edad = 30;

  var num1 = 34.5;
  int num2 = 45;
  print(num1 + num2);

  const double PI = 3.1416;
  final USERNAME = "USER";

  bool? tieneMascota;
  print(tieneMascota);
  String apellido = "Benavides";

  print('Tu nombre es $nombre, tu apellido es $apellido y tu edad es $edad');
  print("El resultado es ${num1 + num2}");

  print(apellido[3]);

  List aprendices = ['Betsy', 'F', 3.4, 'Pablo', 'M', 3.8];
  List<int> edades = [20, 18, 25, 45];

  for (var edad in edades) {
    print(edad);
  }

  edades.add(30); // agrega al final de la lista
  edades[2] = 3; // reeemplaza en la pos
  edades.indexOf(25); // devuelve la pos del valor buscado
  edades.remove(30); // elimina el valor
  edades.removeAt(0); //elimina el valor del indice
  edades.contains(30); // devuelve true o false, si encuentra o no

  Map usuario = {
    'nombre': 'Daniel',
    'apellido':'Benavides',
    'edad': 30,
    'tieneMascota': false
  };

  dynamic peso = 40.5;
  peso = 40;
  peso = '50';

  List amigos = ['Daniel', 45, 'Daniel', 30, 'Daniel', 25, 'Daniel', 20];

  double promedio =( amigos[1] + amigos[3] + amigos[5] + amigos[7] ) /4 ;
  double suma = 0;
  /* for (var i = 1; i < amigos.length; i+2) {
    suma += amigos[i];
  } */

  print("Escribe el nombre de tu mascota");
  String? nombreMascota = stdin.readLineSync();

  int? cantidad = int.parse(stdin.readLineSync()!);

  print("nombre mascota $nombreMascota");

  void saludo(){
    print("saludo");
  }

  String saludar(){
    return "Hola";
  }

  bool aprobacion(double nota){
    if(nota <= 3.4){
      return false;
    }
    else{
      return true;
    }
  } 

  if (aprobacion(3)) {
    print("Ganaste");
  } else {
    print("Chao");
  }

  void saludar2() => print("hola");

}
