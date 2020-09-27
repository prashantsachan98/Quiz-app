import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultphrase {
    var resultText = 'you did it';
    if (resultScore <= 45) {
      resultText = 'Tum visudh chutiye ho.';
    } else if (resultScore >= 45) {
      resultText = 'Tum visudh chutiye nhi ho.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Score $resultScore',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              resultphrase,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: resetHandler,
              child: Text(
                'reset quiz',
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
              color: Colors.orangeAccent,
            ),
            margin: EdgeInsets.all(30),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      color: Colors.blueGrey[100],
    );
  }
}
