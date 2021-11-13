import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:http/http.dart' as http;

class CategoriesService extends ChangeNotifier {
  final String _baseUrl = 'categorias-app-default-rtdb.firebaseio.com';
  final List<Categorias> listaCategorias = [];

  bool isLoading = true;

  CategoriesService() {
    this.loadCategories();
  }

  Future<List<Categorias>> loadCategories() async {
    final url = Uri.https(_baseUrl, '/categorias.json');
    final resp = await http.get(url);
    final Map<String, dynamic> categoriesMap = json.decode(resp.body);
    //print(categoriesMap);

    categoriesMap.forEach((key, value) {
      final tempCategory = Categorias.fromMap(value);
      tempCategory.nombre = key;
      this.listaCategorias.add(tempCategory);
    });
    this.isLoading = false;
    notifyListeners();
    return this.listaCategorias;
  }
}
