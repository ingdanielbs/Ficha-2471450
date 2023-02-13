import 'dart:io';

class Heroe {
  late String nombre;
  late String poder;

  static List<Heroe> heroes = [];

  Heroe(this.nombre, this.poder);

  void info() => print("$nombre - $poder");

  static void saludar(String nombre) =>
      print("Hola, soy el superheroe, $nombre");

  static agregarHeroe() {
    print("Nombre heroe");
    String nombre = stdin.readLineSync()!;
    print("Poder heroe");
    String poder = stdin.readLineSync()!;
    Heroe h = Heroe(nombre, poder);
    heroes.add(h);
    print("Heroe agregado exitosamente");
  }

  static listaHeroes() {
    if (heroes.isEmpty) {
      print("No hay heroes registrados");
    } else {
      for (var h in heroes) {
        print("${h.nombre} - ${h.poder}");
      }
    }
  }

  static Heroe? buscadorHeroe() {
    print("Escribe el nombre del heroe");
    String heroe = stdin.readLineSync()!;
    for (var h in heroes) {
      if (h.nombre == heroe) {
        return h;
      }
    }
    return null;
  }

  static editarHeroe() {
    var h = buscadorHeroe();
    if (h != null) {
      print("Qué quieres editar? 1. Nombre 2.Poder");
      int opcion = int.parse(stdin.readLineSync()!);
      if (opcion == 1) {
        print("Escribe el nuevo nombre");
        String n = stdin.readLineSync()!;
        h.nombre = n;
      } else if (opcion == 2) {
        print("Escribe el nuevo poder");
        String n = stdin.readLineSync()!;
        h.poder = n;
      } else {
        print("Opción inválida");
      }
    } else {
      print("Nombre no encontrado\n");
    }
  }

  static eliminarHeroe() {
    var h = buscadorHeroe();
    if (h != null) {
      heroes.removeAt(heroes.indexOf(h));
      print("Heroe eliminado \n");
    } else {
      print("Heroe no encontrado \n");
    }
  }
}
