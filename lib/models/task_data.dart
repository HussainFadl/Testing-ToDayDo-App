import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';


class TaskData extends ChangeNotifier{
  // with the help of ChangeNotifier will enable
  // TaskData to be listened easily through the widget tree
  // if any changes happen to TaskData

  List<Task> tasks = [

  ];

  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
void updateTask(Task task){
  task.doneChange();
  notifyListeners();
}


void deleteTask(Task task) {

    tasks.remove(task);
    notifyListeners();
}
}