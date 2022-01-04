import 'package:flutter/material.dart';
import './Answer.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function nextQuestion;

  Quiz({required this.questions,required this.nextQuestion, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'] as String,
        ),
        ...(questions[index]['Answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => nextQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
