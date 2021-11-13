// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class TiendasSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: double.infinity,
        height: size.height * 0.7,
        //color: Colors.blueAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text('Tiendas',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) =>
                      _ImagenTienda()),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImagenTienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 400,
      height: 200,
      //color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: <Widget>[_ImagenT(), _ImagenT()],
      ),
    );
  }
}

class _ImagenT extends StatelessWidget {
  const _ImagenT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'home',
                  arguments: 'tienda-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                    placeholder:
                        NetworkImage('https://via.placeholder.com/130x130'),
                    image: NetworkImage('https://via.placeholder.com/130x130'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Nombre: Tienda',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Tipo: Tienda',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            )
          ],
        ));
  }
}
