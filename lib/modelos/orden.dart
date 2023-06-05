import 'package:avila/modelos/titulo.dart';
import 'package:avila/modelos/actor.dart';

class Orden {
  final Titulo titulo;
  final Actor actor;
  final String restar;
  final int ver;

  Orden(
      {required this.titulo,
      required this.actor,
      required this.restar,
      required this.ver});
}
