import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Show extends StatelessWidget {
  String question, correct, choice1, choice2, choice3, choice4, chosen;

  Show(this.question, this.correct, this.choice1, this.choice2, this.choice3,
      this.choice4, this.chosen);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        children: [
          Text(
            question,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          Column(
            children: [
              Row(
                children: [
                  Visibility(
                    child: Icon(
                      Icons.radio_button_unchecked,
                      size: 30,
                    ),
                    visible: !(chosen == choice1),
                    replacement: Visibility(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 30,
                      ),
                      visible: chosen == choice1,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Text(
                    choice1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Visibility(
                    child: Icon(
                      Icons.check,
                      color: Colors.green[900],
                      size: 40.0,
                    ),
                    visible: (choice1 == correct),
                  ),
                  Visibility(
                    child: Icon(
                      Icons.clear,
                      color: Colors.red[900],
                      size: 40.0,
                    ),
                    visible: (chosen == choice1) && (chosen != correct),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Row(
                children: [
                  Visibility(
                    child: Icon(
                      Icons.radio_button_unchecked,
                      size: 30,
                    ),
                    visible: !(chosen == choice2),
                    replacement: Visibility(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 30,
                      ),
                      visible: chosen == choice2,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Text(
                    choice2,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Visibility(
                    child: Icon(
                      Icons.check,
                      color: Colors.green[900],
                      size: 40.0,
                    ),
                    visible: (choice2 == correct),
                  ),
                  Visibility(
                    child: Icon(
                      Icons.clear,
                      color: Colors.red[900],
                      size: 40.0,
                    ),
                    visible: (chosen == choice2) && (chosen != correct),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Row(
                children: [
                  Visibility(
                    child: Icon(
                      Icons.radio_button_unchecked,
                      size: 30,
                    ),
                    visible: !(chosen == choice3),
                    replacement: Visibility(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 30,
                      ),
                      visible: chosen == choice3,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Text(
                    choice3,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Visibility(
                    child: Icon(
                      Icons.check,
                      color: Colors.green[900],
                      size: 40.0,
                    ),
                    visible: (choice3 == correct),
                  ),
                  Visibility(
                    child: Icon(
                      Icons.clear,
                      color: Colors.red[900],
                      size: 40.0,
                    ),
                    visible: (chosen == choice3) && (chosen != correct),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Row(
                children: [
                  Visibility(
                    child: Icon(
                      Icons.radio_button_unchecked,
                      size: 30,
                    ),
                    visible: !(chosen == choice4),
                    replacement: Visibility(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 30,
                      ),
                      visible: chosen == choice4,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Text(
                    choice4,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Visibility(
                    child: Icon(
                      Icons.check,
                      color: Colors.green[900],
                      size: 40.0,
                    ),
                    visible: (choice4 == correct),
                  ),
                  Visibility(
                    child: Icon(
                      Icons.clear,
                      color: Colors.red[900],
                      size: 40.0,
                    ),
                    visible: (chosen == choice4) && (chosen != correct),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
