import 'package:flutter/material.dart';
import 'package:tasky/util/todo_button.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Task Title.....'),
            ),
            Row(
              children: [
                // save button
              TodoButton(text: 'Save', onPressed: (){}),
              TodoButton(text: 'Cancel', onPressed: (){}),
                // cancel button
              ],
            )
          ],
        ),
      ),
    );
  }
}