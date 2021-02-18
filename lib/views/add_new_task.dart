import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  final Function updateList;

  AddNewTask({this.updateList});
  @override
  Widget build(BuildContext context) {
    String msg;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add New Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                style: TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value) {
                  msg = value;
                },
              ),
              FlatButton(
                onPressed: () {
                  msg != null ? updateList(msg) : null;
                  Navigator.pop(context);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
