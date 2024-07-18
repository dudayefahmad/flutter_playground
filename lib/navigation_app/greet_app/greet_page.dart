import 'package:flutter/material.dart';

class GreetPage extends StatelessWidget {
  const GreetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Details',
      home: GreetScreen(),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class GreetScreen extends StatelessWidget {
  final Product product = Product(name: 'Laptop', price: 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('View Product'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductScreen(product: product),
            ));
          },
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Name: ${product.name}'),
            Text('Price: \$${product.price}'),
          ],
        ),
      ),
    );
  }
}
