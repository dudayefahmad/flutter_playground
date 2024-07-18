import 'package:flutter/material.dart';

class MyTodoApp extends StatefulWidget {
  @override
  _MyTodoAppState createState() => _MyTodoAppState();
}

class _MyTodoAppState extends State<MyTodoApp> {
  List<String> activeTasks = ['Task 1', 'Task 2'];
  List<String> completedTasks = ['Task 3', 'Task 4'];

  void moveTaskToCompleted(String task) {
    setState(() {
      activeTasks.remove(task);
      completedTasks.add(task);
    });
  }

  void moveTaskToActive(String task) {
    setState(() {
      completedTasks.remove(task);
      activeTasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Todo App'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Active'),
                Tab(text: 'Completed'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: ListView(
                  children: activeTasks.map((task) {
                    return ListTile(
                      title: Text(task),
                      leading: Icon(Icons.info),
                      trailing: IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () => moveTaskToCompleted(task),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Center(
                child: ListView(
                  children: completedTasks.map((task) {
                    return ListTile(
                      title: Text(task),
                      leading: Icon(Icons.info),
                      trailing: IconButton(
                        icon: Icon(Icons.undo),
                        onPressed: () => moveTaskToActive(task),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
