// To parse this JSON data, do
//
//     final categorias = categoriasFromMap(jsonString);

import 'dart:convert';

class Categorias {
  Categorias({required this.imagen, required this.tipo, this.nombre});

  String imagen;
  bool tipo;
  String? nombre;

  factory Categorias.fromJson(String str) =>
      Categorias.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categorias.fromMap(Map<String, dynamic> json) => Categorias(
        imagen: json["imagen"],
        tipo: json["tipo"],
      );

  Map<String, dynamic> toMap() => {
        "imagen": imagen,
        "tipo": tipo,
      };
}
