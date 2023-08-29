import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quizz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {
  static const tickets = [
    {
      'question': 'Quel ticket veux-tu réserver ?',
      'answer': [
        {'text': 'Sim', 'type': 10},
        {'text': 'Priorise', 'type': 35},
        {'text': 'VIP', 'type': 50},
      ],
    },
    {
      'question': 'Quel artiste veux-tu voir ?',
      'answer': [
        {'text': 'DidiB', 'type': 4},
        {'text': 'Nekfeu', 'type': 14},
        {'text': 'Dadju', 'type': 14},
        {'text': 'Damso', 'type': 14},
        {'text': 'Orelsan', 'type': 14},
        // ...
      ],
    },
    {
      'question': 'Toh heure de shiw !',
      'answer': [
        {'text': '14 heures', 'type': 6},
        {'text': '18 heures', 'type': 4},
        {'text': '22 heures', 'type': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var idnumber = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      idnumber = 0;
    });
  }

  void _chooseTicket(int id) {
    idnumber = idnumber + id;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < tickets.length) {
      print("We have more choose !");
    } else {
      print('No conditions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TicketMaster'),
          ),
          body: _questionIndex < tickets.length
              ? Quizz(
                  chooseTicket: _chooseTicket,
                  questionIndex: _questionIndex,
                  tickets: tickets,
                )
              : Result(idnumber, _resetQuiz)),
    );
  }
}
