import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/widgets/tasks_list.dart';
import 'package:todolist/screens/add_task_screen.dart';
import 'package:todolist/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddTaskScreen(),
            ),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(Icons.list, size: 30, color: Colors.purpleAccent),
                ),
                const Text('Yarukoto', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700)),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks', style: const TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: const TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}