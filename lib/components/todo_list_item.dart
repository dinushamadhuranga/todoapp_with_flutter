import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoListItem extends StatelessWidget {
  final String taskTitle;
  final bool status;
  final DateTime dateTime;
  final Function changeCheckBoxStatus;
  final Function deleteOnLongPress;

  TodoListItem(
      {this.taskTitle,
      this.status,
      this.dateTime,
      this.changeCheckBoxStatus,
      this.deleteOnLongPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: status ? Colors.lightGreen[100] : Colors.yellow[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: status
            ? Icon(Icons.beenhere_outlined, color: Colors.green)
            : Icon(
                Icons.assignment_late_rounded,
                color: Colors.orange,
              ),
        onLongPress: deleteOnLongPress,
        title: Text(
          !status ? taskTitle : taskTitle + '(Done)',
          style: TextStyle(
            fontSize: 20,
            decoration: status ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(DateFormat("yyyy-MM-dd").format(dateTime) +
            '\n' +
            DateFormat("hh:mm").format(dateTime)),
        isThreeLine: true,
        trailing: Checkbox(
          value: status,
          onChanged: changeCheckBoxStatus,
        ),
      ),
    );
  }
}
