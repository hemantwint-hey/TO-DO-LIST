import 'package:flutter/material.dart';
import 'package:todolist/widgets/tasks_tile.dart';
class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        children: const [
          TaskTile(title: 'This is a tsk'),
          TaskTile(title: 'This is a trick'),
          TaskTile(title: 'This is another task'),
        ],
      ),
    );
  }
}