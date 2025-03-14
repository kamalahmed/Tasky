import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function (BuildContext)? onDelete;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.onDelete
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: onDelete,
              icon: Icons.delete,
              label: 'Delete',
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              // Checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),
              // Task Name
              Text(
                taskName,
                style: TextStyle(
                  decoration:
                      taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
