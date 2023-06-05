import 'package:avila/datos/data.dart';
import 'package:avila/modelos/orden.dart';
import 'package:flutter/material.dart';

class PantallaActor extends StatefulWidget {
  const PantallaActor({Key? key}) : super(key: key);

  @override
  State<PantallaActor> createState() => _PantallaActorState();
}

class _PantallaActorState extends State<PantallaActor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Actores Destacados"),
        centerTitle: true,
        backgroundColor: const Color(0xff0f7efe),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            if (index < currentUser.lista.length) {
              Orden orden = currentUser.lista[index];
              return _construirLista(orden);
            }
            return Padding(
              padding: const EdgeInsets.all(15.0),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              Divider(thickness: 1.0, color: Colors.grey),
          itemCount: currentUser.lista.length + 1),
      bottomSheet: Container(
        height: 80,
        decoration: BoxDecoration(color: Color(0xff0f7efe), boxShadow: [
          BoxShadow(blurRadius: 6, color: Colors.black26, offset: Offset(0, -1))
        ]),
        child: Center(
          child: Text(
            "Ver Más",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _construirLista(Orden orden) {
    return Container(
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(12),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(orden.actor.imagenUrl),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          orden.actor.nombre,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          orden.titulo.nombre,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
