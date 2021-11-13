import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';

class CategoriesProvider extends ChangeNotifier {
  Categorias categorias;

  CategoriesProvider(this.categorias);
}
