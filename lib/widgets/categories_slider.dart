import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';

class CategoriasSlider extends StatelessWidget {
  final List<Categorias> listCat;

  //final Categorias categoria;
  final String tituloCategoria;

  const CategoriasSlider(this.tituloCategoria,
      {Key? key, required this.listCat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      //color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                tituloCategoria,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monserrat',
                  fontSize: 24,
                  color: Colors.teal[800],
                ),
              )),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCat.length,
                itemBuilder: (BuildContext context, int index) {
                  final categ = listCat[index];
                  return _ImagenCategoria(categ.imagen, categ.nombre);
                }),
          ),
        ],
      ),
    );
  }
}

class _ImagenCategoria extends StatelessWidget {
  final String url;
  final String? title;

  const _ImagenCategoria(this.url, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 170,
      //color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'categories',
                arguments: 'categoria-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                  placeholder: AssetImage('assets/no-image.png'),
                  image: AssetImage('assets/$url')),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
