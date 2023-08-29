import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> tickets;
  final questionIndex;
  final chooseTicket;

  Quizz(
      {required this.tickets,
      required this.chooseTicket,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(tickets[questionIndex]['question'].toString()),
        ...(tickets[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => chooseTicket(answer['type']), 'nyn');
        }).toList()
      ],
    );
  }
}
