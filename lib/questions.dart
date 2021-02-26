import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      )
    );
    
  }
}