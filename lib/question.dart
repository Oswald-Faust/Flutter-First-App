import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const MyWidget({super.key});
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}
