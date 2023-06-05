// actor

import 'package:avila/modelos/actor.dart';
import 'package:avila/modelos/orden.dart';
import 'package:avila/modelos/titulo.dart';
import 'package:avila/modelos/usuario.dart';

final _pitt =
    Actor(imagenUrl: "assets/imagenes/Brad.jpg", nombre: "Brad Pitt", edad: 59);
final _norton = Actor(
    imagenUrl: "assets/imagenes/norton.jpg", nombre: "Edward Norton", edad: 53);
final _bonham = Actor(
    imagenUrl: "assets/imagenes/Bonham.jpg",
    nombre: "Helena Bonham Carter",
    edad: 57);
final _leto = Actor(
    imagenUrl: "assets/imagenes/Leto.jpg", nombre: "Jared Leto", edad: 51);
final _dwayne = Actor(
    imagenUrl: "assets/imagenes/Dwayne.jpg",
    nombre: "Dwayne Johnson",
    edad: 51);
final _neve = Actor(
    imagenUrl: "assets/imagenes/Campbell.jpg",
    nombre: "Neve Campbell",
    edad: 49);
final _chin =
    Actor(imagenUrl: "assets/imagenes/Han.jpg", nombre: "Chin Han", edad: 53);
final _pablo = Actor(
    imagenUrl: "assets/imagenes/Schreiber.jpg",
    nombre: "Pablo Schreiber",
    edad: 45);
final _momoa = Actor(
    imagenUrl: "assets/imagenes/Momoa.jpg", nombre: "Jason Momoa", edad: 43);
final _sylvia = Actor(
    imagenUrl: "assets/imagenes/Hoeks.jpg", nombre: "Sylvia Hoeks", edad: 40);
final _hera = Actor(
    imagenUrl: "assets/imagenes/Hilmar.jpg", nombre: "Hera Hilmar", edad: 34);
final _dave = Actor(
    imagenUrl: "assets/imagenes/Bautista.jpg",
    nombre: "Dave Bautista",
    edad: 54);
final _matthew = Actor(
    imagenUrl: "assets/imagenes/Gubler.jpg",
    nombre: "Matthew Gray Gubler",
    edad: 43);
final _sherman = Actor(
    imagenUrl: "assets/imagenes/Moore.jpg", nombre: "Sherman Moore", edad: 53);
final _andrea = Actor(
    imagenUrl: "assets/imagenes/Cook.jpg", nombre: "Andrea Joy Cook", edad: 44);
final _ellis = Actor(
    imagenUrl: "assets/imagenes/Gibson.jpg", nombre: "Thomas Gibson", edad: 60);
final _adrien = Actor(
    imagenUrl: "assets/imagenes/Brody.jpg", nombre: "Adrien Brody", edad: 50);
final _thomas = Actor(
    imagenUrl: "assets/imagenes/Kretschmann.jpg",
    nombre: "Thomas Kretschmann",
    edad: 60);
final _emilia =
    Actor(imagenUrl: "assets/imagenes/Fox.jpg", nombre: "Emilia Fox", edad: 48);
final _ed = Actor(
    imagenUrl: "assets/imagenes/Stoppard.jpg", nombre: "Ed Stoppard", edad: 48);
// titulos

final _titulo1 = Titulo(
    imagenUrl: "assets/imagenes/club_pelea.jpg",
    nombre: "El Club de Pelea",
    direc: "David Fincher",
    calif: 8.8,
    actores: [_pitt, _norton, _bonham, _leto]);
final _titulo2 = Titulo(
    imagenUrl: "assets/imagenes/Rascacielos.png",
    nombre: "Rascacielos",
    direc: "Rawson Marshall Thurber",
    calif: 5,
    actores: [_dwayne, _neve, _chin, _pablo]);
final _titulo3 = Titulo(
    imagenUrl: "assets/imagenes/See.jpg",
    nombre: "See",
    direc: "Steven Knight",
    calif: 6.4,
    actores: [_momoa, _sylvia, _hera, _dave]);
final _titulo4 = Titulo(
    imagenUrl: "assets/imagenes/mentes.jpg",
    nombre: "Mentes Criminales",
    direc: "Kirsten Vangsness",
    calif: 6.7,
    actores: [_matthew, _sherman, _andrea, _ellis]);
final _titulo5 = Titulo(
    imagenUrl: "assets/imagenes/Pianista.jpg",
    nombre: "El Pianista",
    direc: "Roman Polanski",
    calif: 8.3,
    actores: [_adrien, _thomas, _emilia, _ed]);
// titulos List

final List<Titulo> titulos = [_titulo1, _titulo2, _titulo3, _titulo4, _titulo5];

// User

final currentUser = Usuario(nombre: "La Bamba", vista: [
  Orden(titulo: _titulo1, actor: _leto, restar: "30 minutos", ver: 1),
  Orden(titulo: _titulo2, actor: _chin, restar: "53 minutos", ver: 3),
  Orden(titulo: _titulo3, actor: _dave, restar: "30 minutos", ver: 2),
  Orden(titulo: _titulo1, actor: _norton, restar: "30 minutos", ver: 1),
  Orden(titulo: _titulo4, actor: _matthew, restar: "30 minutos", ver: 1)
], lista: [
  Orden(titulo: _titulo1, actor: _bonham, restar: "47 minutos", ver: 2),
  Orden(titulo: _titulo5, actor: _adrien, restar: "30 minutos", ver: 1),
  Orden(titulo: _titulo3, actor: _hera, restar: "30 minutos", ver: 1),
  Orden(titulo: _titulo4, actor: _sherman, restar: "47 minutos", ver: 3),
  Orden(titulo: _titulo5, actor: _emilia, restar: "30 minutos", ver: 2)
]);
