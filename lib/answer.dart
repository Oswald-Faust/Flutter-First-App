import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  
  Answer

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text('Ticket 1'),
        onPressed: null,
      ),
    );
  }
}
