import 'package:flutter/material.dart';
import './question.dart';

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

  var tickets = [
    'Quel ticket veux-tu?',
    'Quel artiste veux-tu voir ?',
    'Quand veux-tu le voir ?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TicketMaster'),
          ),
          body: Column(
            children: [
              Question(tickets[_questionIndex]),
              ElevatedButton(onPressed: chooseTicket, child: Text('Ticket 1')),
              ElevatedButton(
                  onPressed: () => print('Ticket 2 use !'),
                  child: Text('Ticket 2')),
              ElevatedButton(
                  onPressed: () {
                    print('I used that');
                  },
                  child: Text('Ticket 3')),
            ],
          )),
    );
  }
}
