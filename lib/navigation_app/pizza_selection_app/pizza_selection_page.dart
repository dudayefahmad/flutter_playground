import 'package:flutter/material.dart';

class PizzaSelectionPage extends StatelessWidget {
  const PizzaSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Selection App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePizzaSelectionScreen(),
    );
  }
}

class HomePizzaSelectionScreen extends StatefulWidget {
  const HomePizzaSelectionScreen({super.key});

  @override
  State<HomePizzaSelectionScreen> createState() => _HomePizzaSelectionScreenState();
}

class _HomePizzaSelectionScreenState extends State<HomePizzaSelectionScreen> {
  String? _selectedPizza;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pizza Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Select Pizza'),
              onPressed: () async {
                final selectedPizza = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PizzaSelectionScreen()),
                );
                if (selectedPizza != null) {
                  setState(() {
                    _selectedPizza = selectedPizza as String?;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text('Selected Pizza: $_selectedPizza'),
          ],
        ),
      ),
    );
  }
}

class PizzaSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Pizza')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Margherita'),
            onTap: () {
              Navigator.of(context).pop('Margherita');
            },
          ),
          ListTile(
            title: Text('Pepperoni'),
            onTap: () {
              Navigator.of(context).pop('Pepperoni');
            },
          ),
          ListTile(
            title: Text('Vegetarian'),
            onTap: () {
              Navigator.of(context).pop('Vegetarian');
            },
          ),
        ],
      ),
    );
  }
}

