import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';


class NewTaskScreen extends StatelessWidget {

  final Function addTaskCallback;
  
   NewTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle; 
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Add Task",
          textAlign: TextAlign.center,// directly beneath the Text...
          style: TextStyle(
            fontSize: 30,
            color: Colors.indigo[400],
            fontWeight: FontWeight.bold,

          ),
          ),

          Container(
            color: Colors.black12,
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;

              },
            ),
          ),
          SizedBox(height: 10,) ,
          TextButton(
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text("Add"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.teal[400],
            primary: Colors.white,

          ),)
        ],
      ),
    );
  }
}
