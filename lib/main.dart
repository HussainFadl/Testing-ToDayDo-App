import 'package:flutter/material.dart';
import 'package:todaydo_app/screens/main_tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task_data.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // must be added to the highest level of the tree widgets
  // (MaterialApp) must be wrapped inside (ChangeNotifierProvider)
  // to be easily used in anywhere under in the levels beneath
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child:   MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}




