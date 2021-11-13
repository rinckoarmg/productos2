import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  String _busqueda = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Cambiar por instancia de categorias

    return Scaffold(
        appBar: AppBar(
          title: Text('Tiendas por Categoria'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TiendasSlider(),
            ],
          ),
        ));
  }
}
