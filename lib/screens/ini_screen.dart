import 'package:flutter/material.dart';
import 'package:productos_app/providers/categories_provider.dart';
import 'package:productos_app/screens/screens.dart';
import 'package:productos_app/services/services.dart';
import 'package:productos_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class IniScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoriesService = Provider.of<CategoriesService>(context);
    //final categoriesProvider = Provider.of<CategoriesProvider>(context);

    if (categoriesService.isLoading) return LoadingScreen();

    return Scaffold(
        appBar: AppBar(title: Text('Inicio')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CategoriasSlider(categoria: categoriesService.categorias[0]),
              CategoriasSlider(categoria: categoriesService.categorias[1]),
            ],
          ),
        ));
  }
}