import 'package:flutter/material.dart';
import 'package:todoapp_with_flutter/components/todo_list_item.dart';
import 'package:todoapp_with_flutter/models/task.dart';

class TodoList extends StatefulWidget {
  final List<Task> data;
  TodoList(this.data);
  @override
  _TodoListState createState() => _TodoListState(data);
}

class _TodoListState extends State<TodoList> {
  _TodoListState(this.data);

  final List<Task> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return TodoListItem(
          taskTitle: data[index].title,
          status: data[index].status,
          dateTime: data[index].dateTime,
          changeCheckBoxStatus: (status) {
            setState(() {
              data[index].changeStatus();
            });
          },
          deleteOnLongPress: () {
            setState(() {
              data.remove(data[index]);
            });
          },
        );
      },
    );
  }
}
