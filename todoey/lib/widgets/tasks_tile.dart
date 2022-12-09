import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  String taskTitle;
  Function(bool?) setState;
  Function()? longPressCallback;

  TaskTile(
      this.isChecked, this.taskTitle, this.setState, this.longPressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: setState,
      ),
    );
  }
}
