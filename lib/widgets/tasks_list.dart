import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';

import 'task_tile.dart';

class TaksList extends StatefulWidget {
  final List<Task> tasks;
  TaksList(this.tasks);

  @override
  _TaksListState createState() => _TaksListState();
}

class _TaksListState extends State<TaksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
