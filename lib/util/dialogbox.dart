import 'package:flutter/material.dart';
import 'package:tasky/util/todo_button.dart';

class Dialogbox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  Dialogbox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Task Title.....',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                // save button
                TodoButton(text: 'Save', onPressed: onSave),
                const SizedBox(width: 10),
                TodoButton(text: 'Cancel', onPressed: onCancel),
                // cancel button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
