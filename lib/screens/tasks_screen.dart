import 'package:flutter/material.dart';
class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add,color: Colors.white,),
        onPressed: null,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top:60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size:30.0,
                        color: Colors.lightBlueAccent,
                      ),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                  ),
                  SizedBox(
                    height:10.0,
                  ),
                  Text(
                      'Todoey',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                Text(
                    '12 tasks',
                    style:TextStyle(
                      color:Colors.white,
                      fontSize:18,
                    ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('This is a task'),
                    trailing: Checkbox(value: false,  onChanged: (bool? value) {}, ),
                  ),
                  ListTile(
                    title: Text('This is a '),
                    trailing: Checkbox(value: false,  onChanged: (bool? value) {}, ),
                  ),
                  ListTile(
                    title: Text('This is a task'),
                    trailing: Checkbox(value: false,  onChanged: (bool? value) {}, ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
