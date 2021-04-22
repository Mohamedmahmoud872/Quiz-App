import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_home.dart';

void main() {
  runApp(quiz_app());
}

class quiz_app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}