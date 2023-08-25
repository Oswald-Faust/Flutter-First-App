import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void chooseTicket() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var tickets = ['Quel ticket veux-tu?', 'Quel artiste veux-tu voir ?'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TicketMaster'),
          ),
          body: Column(
            children: [
              Text(tickets[questionIndex]),
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
