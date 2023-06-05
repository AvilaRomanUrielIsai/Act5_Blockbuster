import 'package:avila/modelos/actor.dart';
import 'package:avila/modelos/titulo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PantallaTitulo extends StatefulWidget {
  final Titulo titulo;

  const PantallaTitulo({Key? key, required this.titulo}) : super(key: key);

  @override
  State<PantallaTitulo> createState() => _PantallaTituloState();
}

class _PantallaTituloState extends State<PantallaTitulo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Hero(
              tag: widget.titulo.imagenUrl,
              child: Image(
                height: 220,
                width: MediaQuery.of(context).size.width,
                image: AssetImage(widget.titulo.imagenUrl),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                    iconSize: 35,
                    color: Color(0xff0f7efe),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.titulo.nombre,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 10),
              RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  allowHalfRating: true,
                  unratedColor: Colors.grey,
                  itemSize: 20,
                  itemBuilder: (context, _) => (Icon(
                        Icons.star,
                        color: Colors.amber,
                      )),
                  onRatingUpdate: (rating) {
                    Text(rating.toString());
                  }),
              SizedBox(height: 10),
              Text(
                widget.titulo.direc,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  splashColor: Colors.grey,
                  elevation: 4,
                  hoverElevation: 10,
                  color: Color(0xff0f7efe),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {},
                  child: Text(
                    "Sinopsis",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
              MaterialButton(
                  splashColor: Colors.grey,
                  elevation: 4,
                  hoverElevation: 10,
                  color: Color(0xff0f7efe),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {},
                  child: Text(
                    "Críticas",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Actores",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 1.2),
        ),
        SizedBox(height: 10),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          children: List.generate(widget.titulo.actores.length, (index) {
            Actor actor = widget.titulo.actores[index];
            return _ActoresLista(actor);
          }),
        ))
      ],
    ));
  }

  Widget _ActoresLista(Actor items) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 175,
            width: 175,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(items.imagenUrl), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 175,
            height: 175,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black87.withOpacity(0.3),
                    Colors.black45.withOpacity(0.3),
                    Colors.black54.withOpacity(0.3),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                items.nombre,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Edad: ${items.edad}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Positioned(
              bottom: 15,
              right: 10,
              child: Container(
                // width: 48,
                decoration: BoxDecoration(
                    color: Color(0xff0f7efe),
                    borderRadius: BorderRadius.circular(30)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    )),
              ))
        ],
      ),
    );
  }
}
