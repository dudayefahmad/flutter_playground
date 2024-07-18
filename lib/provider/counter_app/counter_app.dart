import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    if (count > 0) {
      _count--;
      notifyListeners();
    }
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Counter(),
      child: const MaterialApp(
        home: CounterPageProvider(),
      ),
    );
  }
}

class CounterPageProvider extends StatelessWidget {
  const CounterPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter App'),
      ),
      body: Center(
        child: Text('Counter: ${counter.count}'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: counter.decrement,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: counter.increment,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

