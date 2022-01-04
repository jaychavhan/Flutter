import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    var resultText = 'Here are your scores';
    if (resultScore == 0) {
      resultText = 'You don\'t know anything about Jay!!!';
    } else if (resultScore == 10) {
      resultText = 'You have scored 25%';
    } else if (resultScore == 20) {
      resultText = 'You have scored 50%';
    } else if (resultScore == 30) {
      resultText = 'You have scored 75%';
    } else if (resultScore == 40) {
      resultText = 'Congratulations! you have scored 100%';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz , child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
