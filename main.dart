import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  final _questions = [
    {
      'questionText': 'which is the biggest animal?',
      'answers': [
        {'Text': 'Cat', 'Score': 0},
        {'Text': 'Elephant', 'Score': 10},
        {'Text': 'Dog', 'Score': 0}
      ],
    },
    {
      'questionText': 'which is the tallest animal?',
      'answers': [
        {'Text': 'Lion', 'Score': 0},
        {'Text': 'Horse', 'Score': 0},
        {'Text': 'Giraffe', 'Score': 10}
      ],
    },
    {
      'questionText': 'which is the slowest animal?',
      'answers': [
        {'Text': 'Three-toed Sloth', 'Score': 10},
        {'Text': 'Turtle', 'Score': 0},
        {'Text': 'Bear', 'Score': 0},
      ]
    },
    {
      'questionText': 'which is the fastest animal?',
      'answers': [
        {'Text': 'Cheetah', 'Score': 10},
        {'Text': 'Horse', 'Score': 0},
        {'Text': 'Deer', 'Score': 0}
      ],
    }
  ];
  var _index = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _answerQustion(int score) {
    _totalScore += score;
    setState(() {
      _index += 1;
    });
    print(_index);
    if (_index < _questions.length) {
      print('we have more questions');
    } else {
      print('no more questions');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Qize App'),
            backgroundColor: Colors.deepPurple,
          ),
          body: _index < _questions.length
              ? Quiz(_questions, _answerQustion, _index)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
