import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void chooseTicket() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var tickets = const [
      {
        'question': 'Quel ticket veux-tu?',
        'answer': ['10k', '20k', '30k'],
      },
      {
        'question': 'Quel artiste veux-tu voir ?',
        'answer': ['DidiB', 'Nekfeu', 'Damso'],
      },
      {
        'question': 'Heure du show',
        'answer': ['15 heures', '18 heures', '20 heures'],
      },
    ];

    tickets = [];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TicketMaster'),
          ),
          body: Column(
            children: [
              Question(tickets[_questionIndex]['question'].toString()),
              ...(tickets[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(chooseTicket, answer);
              }).toList()
            ],
          )),
    );
  }
}
