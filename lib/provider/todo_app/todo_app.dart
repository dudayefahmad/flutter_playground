import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Todo extends ChangeNotifier {
  List<String> _todos = [];

  List<String> get todos => _todos;

  void add(String todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void remove(String todo) {
    _todos.remove(todo);
    notifyListeners();
  }
}

class TodoAppProvider extends StatelessWidget {
  const TodoAppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Todo(),
      child: MaterialApp(
        home: TodoPageProvider(),
      ),
    );
  }
}

class TodoPageProvider extends StatelessWidget {
  const TodoPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context);
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Todo App"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Type todo and hit enter',
              contentPadding: EdgeInsets.all(10),
            ),
            controller: todoController,
            onSubmitted: (value) {
              todo.add(value);
              todoController.clear();
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todo.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todo.todos[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      todo.remove(todo.todos[index]);
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

