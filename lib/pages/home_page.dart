import 'package:flutter/material.dart';
import 'package:tasky/util/dialogbox.dart';
import 'package:tasky/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Text Controller to get the input
  final _controller = TextEditingController();


  // list of todos
  List todos = [
    ["Learn Flutter Deeply", false],
    ["Learn Laravel Deeply", false],
    ["Eat Healthy", true],
  ];

  void checkboxChanged(bool value, int index) {
    setState(() {
      todos[index][1] = !todos[index][1];
    });
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialogbox(controller: _controller, onSave: saveNewTask, onCancel: () => Navigator.of(context).pop(),);
      },
    );
  }

  void saveNewTask() {
    var inputText = _controller.text; // get the input field value
    setState(() {
          todos.insert(todos.length, [inputText, false]); // add the input value to the todos and refresh the widget
          _controller.clear(); // clear the input field
    });
    print('Wrokgin on saving the data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text('Tasky'), elevation: 0),
      floatingActionButton: FloatingActionButton(onPressed: createNewTask, child: Icon(Icons.add),),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return ToDoTile(
            taskName: todos[index][0],
            taskCompleted: todos[index][1],
            onChanged: (value) => checkboxChanged(value!, index),
          );
        },
      ),
    );
  }
}
