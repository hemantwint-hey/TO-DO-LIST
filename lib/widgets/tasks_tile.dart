import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final String title;

  const TaskTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}
