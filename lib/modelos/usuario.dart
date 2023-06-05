import 'package:avila/modelos/orden.dart';

class Usuario {
  final String nombre;
  final List<Orden> vista;
  final List<Orden> lista;

  Usuario({required this.nombre, required this.vista, required this.lista});
}
