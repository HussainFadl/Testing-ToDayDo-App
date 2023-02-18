import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widgets/individual_tasks_tiles.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';
import '../models/task_data.dart';





class tasks_list extends StatelessWidget {


  
  
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
       
      builder: (BuildContext context, TaskData, Widget? child) {
      return  ListView.builder(
        itemCount: TaskData.tasks.length,
        itemBuilder: (context, index){
          return individual_task_tiles(
              isChecked:TaskData.tasks[index].isDone,
              taskTitle: TaskData.tasks[index].name,
              checkboxChange: (newValue) {
                TaskData.updateTask(TaskData.tasks[index]);
              }, listTileDelete: () {
                TaskData.deleteTask(TaskData.tasks[index]);
          },);
        },
      );
      },

    );
    
  }
}

