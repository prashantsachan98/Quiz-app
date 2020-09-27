import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Question(
              questions[questionIndex]['questionText'],
            ),
            color: Colors.blue[900],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answerset) {
            return Answer(
                () => answerQuestion(answerset['score']), answerset['text']);
          }).toList()
        ],
      ),
      color: Colors.blueGrey[100],
    );
  }
}
