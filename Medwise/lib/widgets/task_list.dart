import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> displayedTasks;

  TaskList(this.displayedTasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  var done = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.displayedTasks[index].title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            widget.displayedTasks[index].description,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            widget.displayedTasks[index].time.format(context),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          done = !done;
                        });
                      },
                      child: done ? circleDone() : circleNotDone()),
                ],
              ),
            ),
          );
        },
        itemCount: widget.displayedTasks.length,
      ),
    );
  }

  circleNotDone() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 2,
        ),
      ),
    );
  }

  circleDone() {
    return CircleAvatar(
      radius: 15,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Image.asset('assets/images/tick.png'),
      ),
    );
  }
  // return Container(
  //   height: 30,
  //   width: 30,
  //   padding: EdgeInsets.all(8),
  //   decoration: BoxDecoration(
  //     shape: BoxShape.circle,
  //     color: Colors.blue,
  //   ),
  //   child: Image.asset('assets/images/tick.png'),
  // );
}
