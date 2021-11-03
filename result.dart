import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final resettHandler;
  Result(this.resultscore, this.resettHandler);
  String get resultPhrase {
    String resultText;
    if (resultscore == 40) {
      resultText = "Excellent :).. ";
    } else if (resultscore == 30) {
      resultText = "Very good !..";
    } else if (resultscore == 20) {
      resultText = "Good !..";
    } else if (resultscore == 10) {
      resultText = "Bad ..";
    } else {
      resultText = "So Bad :( ..";
    }
    return (resultText + '\n your score is $resultscore out of 40 ');
  }

  @override
  Widget build(BuildContext Context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.purple[300],
              backgroundColor: Colors.purple[50]),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resettHandler,
          child: Text('Restart Quiz?'),
          textColor: Colors.purpleAccent,
          highlightColor: Colors.deepPurple,
        )
      ]),
    );
  }
}
