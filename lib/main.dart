import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuilderContext){
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}