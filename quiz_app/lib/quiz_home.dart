import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/start_quiz.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(102, 255, 51, 1),
      appBar: AppBar(
        title: Text(
          'Football Quiz',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Welcome To Football Quiz App',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StartQuiz(0, 0, [])));
                },
                child: Container(
                  width: 180,
                  height: 60,
                  child: Center(
                      child: Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.0)),
                ))
          ],
        ),
      ),
    ));
  }
}
