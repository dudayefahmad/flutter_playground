import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/product': (context) => ProductScreen(),
      },
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class HomeScreen extends StatelessWidget {
  final Product product = Product(name: 'Laptop', price: 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Product'),
          onPressed: () {
            Navigator.pushNamed(context, '/product', arguments: product);
          },
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Receiving the product object passed as an argument
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${product.name}'),
            Text('Price: \$${product.price}'),
          ],
        ),
      ),
    );
  }
}
