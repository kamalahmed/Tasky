import 'package:flutter/material.dart';
import 'package:tasky/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Tasky'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) { 
          return ToDoTile(taskName: todos[index][0], taskCompleted: todos[index][1], onChanged: (value) => checkboxChanged(value!, index));
       },
        
      ),
    );
  }
}