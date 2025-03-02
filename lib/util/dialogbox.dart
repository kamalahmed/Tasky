import 'package:flutter/material.dart';

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

                // cancel button
              ],
            )
          ],
        ),
      ),
    );
  }
}