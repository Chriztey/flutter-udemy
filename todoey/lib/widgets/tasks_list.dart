import 'package:flutter/material.dart';
import 'package:todoey_flutterr/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutterr/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(task.isDone, task.name, (bool? checkboxState) {
              taskData.updateTask(task);
            }, () {
              taskData.deleteTask(task);
            });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
