import 'package:flutter/material.dart';
import 'package:tasky/util/todo_button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  Dialogbox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Task Title.....'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

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