import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.purpleAccent),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.purpleAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              if (newTaskTitle.isNotEmpty) {
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}