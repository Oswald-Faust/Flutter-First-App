import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int idgive;
  final resetHandler;
  Result(this.idgive, this.resetHandler);

  get idTake {
    String Info;
    if (idgive <= 10) {
      Info = 'Tu es un des premiers !';
    } else if (idgive <= 20) {
      Info = 'Pas mal, on gardait ta place !';
    } else if (idgive <= 30) {
      Info = 'Oulala, de justesse, bg ';
    } else {
      Info = 'Bof, plus dispo ! ';
    }
    return Info;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            idTake,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Revenir'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.green)),
          )
        ],
      ),
    );
  }
}
