import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  final String title;

  const TaskTile({super.key, required this.title});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title,style: TextStyle(decoration: TextDecoration.lineThrough),),
      trailing: TaskCheckbox(isChecked),
    );
  }
}
class TaskCheckbox  extends StatelessWidget{


final bool checkboxState;
TaskCheckbox(this.checkboxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:(newValue){
          // setState(() {
          //   isChecked= newValue!;// to prevent null pointer exception
          // });
      } ,
    );
  }
}

