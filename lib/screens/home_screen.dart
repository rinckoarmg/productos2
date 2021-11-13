import 'package:flutter/material.dart';
import 'package:productos_app/screens/screens.dart';
import 'package:productos_app/services/services.dart';
import 'package:productos_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);
    if (productsService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos por tienda'),
      ),
      //listView.bilder es cuando necesitamos que valla creando elmentos
      body: ListView.builder(
          itemCount: productsService.products.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                productsService.selectedProduct =
                    productsService.products[index].copy();
                Navigator.pushNamed(context, 'product');
              },
              child: ProductCard(
                product: productsService.products[index],
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
