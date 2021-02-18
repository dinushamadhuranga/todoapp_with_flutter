import 'package:flutter/material.dart';
import 'package:todoapp_with_flutter/components/todo_list.dart';
import 'package:todoapp_with_flutter/models/task.dart';
import 'package:todoapp_with_flutter/models/tasks.dart';
import 'package:todoapp_with_flutter/views/add_new_task.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(this.dataList);

  final TaskData dataList;
  @override
  _HomeScreenState createState() => _HomeScreenState(dataList);
}

class _HomeScreenState extends State<HomeScreen> {
  int remainingTasks;

  _HomeScreenState(this.dataList);

  TaskData dataList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.lightBlueAccent,
                    child: Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/appicon.png'),
                      ),
                    ),
                  ),
                  Text(
                    'ToDo App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: TodoList(dataList.getDataList()),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 70.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddNewTask(
                      updateList: (msg) {
                        setState(() {
                          dataList.addTask(Task(msg));
                        });
                      },
                    ),
                  )));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
