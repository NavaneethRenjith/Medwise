import 'package:flutter/material.dart';

import '../models/task.dart';
import './task_list.dart';
import './date.dart';
import './new_task.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<Task> _userTasks = [
    Task(
      title: 'Before Food Medicine',
      description: 'xyz..25',
      date: DateTime.now(),
      time: DateTime.now(),
      tag: 'medicine',
    ),
    Task(
      title: 'Evening Walk 2km',
      description: 'abcdefg',
      date: DateTime.now(),
      time: DateTime.now(),
      tag: 'exercise',
    ),
    Task(
      title: 'Evening Walk 2km',
      description: 'abcdefg',
      date: DateTime.now(),
      time: DateTime.now(),
      tag: 'exercise',
    ),
    Task(
      title: 'Evening Walk 2km',
      description: 'abcdefg',
      date: DateTime.now(),
      time: DateTime.now(),
      tag: 'exercise',
    ),
    Task(
      title: 'Evening Walk 2km',
      description: 'abcdefg',
      date: DateTime.now(),
      time: DateTime.now(),
      tag: 'exercise',
    ),
    Task(
      title: 'Evening Walk 2km',
      description: 'abcdefg',
      date: DateTime.now(),
      time: DateTime.now(),
      tag: 'exercise',
    ),
  ];

  void _addNewTask(String taskTitle, String taskDescription, String taskTag) {
    final newTask = Task(
      title: taskTitle,
      description: taskDescription,
      date: DateTime.now(),
      time: DateTime.now(),
      tag: taskTag,
    );

    setState(() {
      _userTasks.add(newTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Date(),
            TaskList(_userTasks),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewTask(_addNewTask)),
          );
        },
      ),
    );
  }
}
