import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), // overall screen padding
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 30),

          // ✅ OUTSIDE padding for TextButton
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                fixedSize: const Size(150, 50),
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'ADD',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
