import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp_with_flutter/models/tasks.dart';
import 'package:todoapp_with_flutter/views/home_screen.dart';

String btnlabel = 'Get Start';
Color btnColor = Colors.lightBlueAccent;

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    TaskData dataList = TaskData();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/appicon.png'),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.all(10),
                  color: btnColor,
                  onPressed: () {
/*                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));*/
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(dataList)));
                    if (btnlabel == 'Get Start') {
                      setState(() {
                        btnlabel = 'Continue';
                        btnColor = Colors.green;
                      });
                    }
                  },
                  child: Text(
                    btnlabel,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Column(
                  children: [
                    Text('Press + button in bottom to add new tasks'),
                    Text('Press check box for make the task as done.'),
                    Text('To delete long press the task.'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
