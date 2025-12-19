import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/widgets/tasks_tile.dart';
import 'package:todolist/models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                // To make it disappear when checked, we call delete
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}