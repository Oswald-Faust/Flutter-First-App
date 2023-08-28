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

  var _questionIndex = 0;

  void chooseTicket() {
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
              : Result( )
      ),
    );
  }
}
