import 'package:flutter/material.dart';

import 'package:practice/Result.dart';
import './Quiz.dart';

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
  final _questions = const [
    {
      'questionText': 'How are you related to Jay?',
      'Answers': [
        {'text': 'Parent', 'score': 0},
        {'text': 'Sibling', 'score': 0},
        {'text': 'Friend', 'score': 0},
        {'text': 'Relative', 'score': 0},
      ]
    },
    {
      'questionText': 'What is his birth-year?',
      'Answers': [
        {'text': '2000', 'score': 0},
        {'text': '2001', 'score': 0},
        {'text': '1999', 'score': 10},
        {'text': '1998', 'score': 0},
      ]
    },
    {
      'questionText': 'What is his Birthplace?',
      'Answers': [
        {'text': 'Shahada', 'score': 10},
        {'text': 'Dondaicha', 'score': 0},
        {'text': 'Pune', 'score': 0},
        {'text': 'Lonkheda', 'score': 0}
      ]
    },
    {
      'questionText': 'What is his nickname?',
      'Answers': [
        {'text': 'Bunty', 'score': 0},
        {'text': 'Sunny', 'score': 0},
        {'text': 'Sonu', 'score': 10},
        {'text': 'Jayu', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the middle name of Jay?',
      'Answers': [
        {'text': 'Baburao', 'score': 0},
        {'text': 'Vasant', 'score': 10},
        {'text': 'Vishal', 'score': 0},
        {'text': 'Vikrant', 'score': 0},
      ]
    },
  ];
  var _index = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }
  void _nextQuestion(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jay Chavhan'),
        ),
        body: _index < _questions.length
            ? Quiz(
                questions: _questions,
                nextQuestion: _nextQuestion,
                index: _index)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
