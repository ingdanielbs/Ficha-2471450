import 'dart:io';

import 'package:poo/heroe.dart';

void main(List<String> args) {
  int opcion = 0;
  do {
    print("Escribe \n1. Agregar heroe \n2. Editar heroe \n3. Listar heroes \n4. Eliminar heroe \n5. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        Heroe.agregarHeroe();
        break;
      case 2:
        Heroe.editarHeroe();
        break;
      case 3:
        Heroe.listaHeroes();
        break;
      case 4:
        Heroe.eliminarHeroe();
        break;
      case 5:
        print("Andá pashá");
        break;
      default:
    }
  } while (opcion != 5);
}
