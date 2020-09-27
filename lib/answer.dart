import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerset;
  final Function selectHandler;
  Answer(this.selectHandler, this.answerset);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.white,
        child: Text(answerset),
        onPressed: selectHandler,
      ),
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
    );
  }
}
