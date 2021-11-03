import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;
  Quiz(this.questions, this.answerQuestion, this.index);
  @override
  Widget build(BuildContext Context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List).map((answer) {
          return Answer(() => answerQuestion(answer['Score']), answer['Text']);
        }).toList()
      ],
    );
  }
}
