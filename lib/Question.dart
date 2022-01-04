import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 28,
            color: Color.fromARGB(210, 221, 123, 200),
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }
}
