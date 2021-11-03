import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext Context) {
    return Container(
        // width: double.infinity,

        margin: EdgeInsets.all(30),
        child: Text(
          questionText,
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              //color: Colors.purple[300],
              backgroundColor: Colors.purple[50]),
          textAlign: TextAlign.center,
        ));
  }
}
