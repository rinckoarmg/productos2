import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:productos_app/services/services.dart';
import 'package:provider/provider.dart';

class CategoriasSlider extends StatelessWidget {
  final Categorias categoria;

  const CategoriasSlider({Key? key, required this.categoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriaService = Provider.of<CategoriesService>(context);
    return Container(
      width: double.infinity,
      height: 230,
      //color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              //TODO: poner el ttulo dinámico
              child: Text('categoria.nombre',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriaService.categorias.length,
                itemBuilder: (_, int index) => _ImagenCategoria()),
          ),
        ],
      ),
    );
  }
}

class _ImagenCategoria extends StatelessWidget {
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
                  image: NetworkImage('https://via.placeholder.com/400x400')),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Nombre: este es el nombre mas largo del mundo mundial',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
