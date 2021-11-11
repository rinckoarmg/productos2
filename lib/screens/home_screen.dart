import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      //listView.bilder es cuando necesitamos que valla creando elmentos
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'product'),
          child: ProductCard()
          )
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {},
       child: Icon(Icons.add),
       ),
    );
  }
}