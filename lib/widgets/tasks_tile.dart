import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final String title;

  const TaskTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: TaskCheckbox(),
    );
  }


}
class TaskCheckbox  extends StatefulWidget{
  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}
class _TaskCheckboxState extends State<TaskCheckbox> {

  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: true,
      onChanged:(newValue){
          setState(() {
            isChecked= newValue!;// to prevent null pointer exception
          });
      } ,
    );
  }
}

