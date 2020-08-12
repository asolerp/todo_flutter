import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';

import 'task_tile.dart';

class TaksList extends StatefulWidget {
  @override
  _TaksListState createState() => _TaksListState();
}

class _TaksListState extends State<TaksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(taskTitle: tasks[], isChecked: ,)
    });
  }
}
