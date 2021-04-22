import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/show_result.dart';
import 'model/quiz.dart';

class Results extends StatefulWidget {
  final int total = 5;
  int correct;
  List<String> chosen;

  Results(this.correct, this.chosen);

  @override
  State<StatefulWidget> createState() {
    return ResultsState();
  }
}

class ResultsState extends State<Results> {
  Quiz myQuiz = new Quiz();
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(bottom: 30)),
              Text(
                'You got ${widget.correct} of 5 with percentage ${widget.correct / widget.total * 100} %',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40)),
              Show(
                  myQuiz.quiz[0].quest,
                  myQuiz.quiz[0].answer,
                  myQuiz.quiz[0].choices[0],
                  myQuiz.quiz[0].choices[1],
                  myQuiz.quiz[0].choices[2],
                  myQuiz.quiz[0].choices[3],
                  widget.chosen[0]),
              Show(
                  myQuiz.quiz[1].quest,
                  myQuiz.quiz[1].answer,
                  myQuiz.quiz[1].choices[0],
                  myQuiz.quiz[1].choices[1],
                  myQuiz.quiz[1].choices[2],
                  myQuiz.quiz[1].choices[3],
                  widget.chosen[1]),
              Show(
                  myQuiz.quiz[2].quest,
                  myQuiz.quiz[2].answer,
                  myQuiz.quiz[2].choices[0],
                  myQuiz.quiz[2].choices[1],
                  myQuiz.quiz[2].choices[2],
                  myQuiz.quiz[2].choices[3],
                  widget.chosen[2]),
              Show(
                  myQuiz.quiz[3].quest,
                  myQuiz.quiz[3].answer,
                  myQuiz.quiz[3].choices[0],
                  myQuiz.quiz[3].choices[1],
                  myQuiz.quiz[3].choices[2],
                  myQuiz.quiz[3].choices[3],
                  widget.chosen[3]),
              Show(
                  myQuiz.quiz[4].quest,
                  myQuiz.quiz[4].answer,
                  myQuiz.quiz[4].choices[0],
                  myQuiz.quiz[4].choices[1],
                  myQuiz.quiz[4].choices[2],
                  myQuiz.quiz[4].choices[3],
                  widget.chosen[4]),
              MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => quiz_app()));
                  },
                  child: Container(
                    width: 180,
                    height: 60,
                    child: Center(
                        child: Text(
                      'Start New Quiz',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0)),
                  )),
              Padding(padding: EdgeInsets.only(bottom: 60)),
            ],
          ),
        ),
      ),
    ));
  }
}
