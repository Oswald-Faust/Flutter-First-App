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
        {
          'text': 'Sim',
          'type': 10
        }, // Utilise des entiers au lieu de chaînes de caractères
        {'text': 'Priorise', 'type': 35},
        {'text': 'VIP', 'type': 50},
      ],
    },
    {
      'question': 'Quel artiste veux-tu voir ?',
      'answer': [
        {'text': 'DidiB', 'type': 4},
        {'text': 'Nekfeu', 'type': 14},
        // ...
      ],
    },
    {
      'question': 'Heure du show',
      'answer': [
        {'text': '14 heures', 'type': 6},
        {'text': '18 heures', 'type': 6},
        // ...
      ],
    },
  ];

  var _questionIndex = 0;
  var idnumber = 0;

  void chooseTicket(int id) {
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
                  chooseTicket: chooseTicket,
                  questionIndex: _questionIndex,
                  tickets: tickets,
                )
              : Result(idnumber)),
    );
  }
}
