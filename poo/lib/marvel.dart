import 'dart:io';

import 'package:poo/heroe.dart';

class Marvel {
  late String nombre;
  late int salario;

  static List reclutados = [];

  Marvel(this.nombre, this.salario);

  static reclutarHeroe (){
    var h = Heroe.buscadorHeroe();
    if (h != null) {
      print("Escribe el salario del heroe");
      int salario = int.parse(stdin.readLineSync()!);
      reclutados.add(Marvel(h.nombre, salario));
      print("Heroe reclutado \n");
    } else {
      print("No existe el heroe \n");
    }
  }

  
}