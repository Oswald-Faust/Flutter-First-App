import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int idgive;
  Result(this.idgive);

  get idTake {
    var Info = 'Prends ton ID !';
    if (idgive <= 5) {
      Info = 'Tu es un des premiers !';
    } else if (idgive <= 20) {
      Info = 'Pas mal, on gardait ta place !';
    } else if (idgive <= 40) {
      Info = 'Oulala, de justesse, bg ';
    }
    return Info;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        idTake,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
