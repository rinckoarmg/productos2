// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

class Product {
  Product({
    this.descripcion,
    required this.disponible,
    this.imagen,
    required this.nombre,
    required this.precio,
    this.id,
  });

  String? descripcion;
  bool disponible;
  String? imagen;
  String nombre;
  int precio;
  String? id;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        descripcion: json["descripcion"],
        disponible: json["disponible"],
        imagen: json["imagen"],
        nombre: json["nombre"],
        precio: json["precio"].toInt(),
      );

  Map<String, dynamic> toMap() => {
        "descripcion": descripcion,
        "disponible": disponible,
        "imagen": imagen,
        "nombre": nombre,
        "precio": precio,
      };

  Product copy() => Product(
        descripcion: this.descripcion,
        disponible: this.disponible,
        imagen: this.imagen,
        nombre: this.nombre,
        precio: this.precio,
        id: this.id,
      );
}
