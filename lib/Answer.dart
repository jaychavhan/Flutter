import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressedFunc;
  final String answerText;
  Answer(this.onPressedFunc, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        
        child: Text(answerText),
        onPressed: onPressedFunc,
      ),
    );
  }
}
