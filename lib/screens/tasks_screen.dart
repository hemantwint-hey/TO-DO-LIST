import 'package:flutter/material.dart';
import 'package:todolist/widgets/tasks_list.dart';
class TasksScreen extends StatelessWidget {

  Widget buildBottomSheet(BuildContext context){
      return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildBottomSheet);
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          _buildHeader(),
          _buildTaskList(),
        ],
      ),
    );
  }

  /// Header section (top blue part)
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(
        top: 60,
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.list,
              size: 30,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Todoey',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '12 tasks',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  /// Task list section (white container)
  Widget _buildTaskList() {
    return const Expanded(
      child: TasksList(),
    );
  }
}

