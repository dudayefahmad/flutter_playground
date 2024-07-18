import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Counter App",
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Define the counter variable
  int _counter = 0;

  // Define the increment and decrement counter methods
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      drawer: Drawer(
        child: ListView(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 72),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Add',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Subtract',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

