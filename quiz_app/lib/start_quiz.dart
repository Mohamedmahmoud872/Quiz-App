import 'package:flutter/material.dart';
import 'package:quiz_app/results.dart';

import 'model/quiz.dart';

class StartQuiz extends StatefulWidget {
  final int index;
  int correct;
  List<String> chosen;
  StartQuiz(this.index, this.correct, this.chosen);

  @override
  State<StatefulWidget> createState() {
    return StartQuizState();
  }
}

class StartQuizState extends State<StartQuiz> {
  Quiz myQuiz = new Quiz();
  @override
  void initState() {
    super.initState();
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                myQuiz.quiz[widget.index].quest,
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].choices[0] ==
                        myQuiz.quiz[widget.index].answer) {
                      widget.correct++;
                    }
                    if (widget.index != 4) {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[0]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartQuiz(
                              widget.index + 1, widget.correct, widget.chosen),
                        ),
                      );
                    } else {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[0]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Results(widget.correct, widget.chosen),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                        child: Text(
                      myQuiz.quiz[widget.index].choices[0],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0)),
                  )),
              MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].choices[1] ==
                        myQuiz.quiz[widget.index].answer) {
                      widget.correct++;
                    }
                    if (widget.index != 4) {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[1]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartQuiz(
                              widget.index + 1, widget.correct, widget.chosen),
                        ),
                      );
                    } else {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[1]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Results(widget.correct, widget.chosen),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                        child: Text(
                      myQuiz.quiz[widget.index].choices[1],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0)),
                  )),
              MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].choices[2] ==
                        myQuiz.quiz[widget.index].answer) {
                      widget.correct++;
                    }
                    if (widget.index != 4) {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[2]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartQuiz(
                              widget.index + 1, widget.correct, widget.chosen),
                        ),
                      );
                    } else {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[2]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Results(widget.correct, widget.chosen),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                        child: Text(
                      myQuiz.quiz[widget.index].choices[2],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0)),
                  )),
              MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].choices[3] ==
                        myQuiz.quiz[widget.index].answer) {
                      widget.correct++;
                    }
                    if (widget.index != 4) {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[3]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartQuiz(
                              widget.index + 1, widget.correct, widget.chosen),
                        ),
                      );
                    } else {
                      widget.chosen.add(myQuiz.quiz[widget.index].choices[3]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Results(widget.correct, widget.chosen),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                        child: Text(
                      myQuiz.quiz[widget.index].choices[3],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
