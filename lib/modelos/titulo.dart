import 'package:avila/modelos/actor.dart';

class Titulo {
  final String imagenUrl;
  final String nombre;
  final String direc;
  final double calif;
  final List<Actor> actores;

  Titulo(
      {required this.imagenUrl,
      required this.nombre,
      required this.direc,
      required this.calif,
      required this.actores});
}
