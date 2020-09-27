import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText':
            'Which of the following is the capital of Arunachal Pradesh?',
        'answers': [
          {'text': 'Itanagar', 'score': 10},
          {'text': 'Dispur', 'score': 0},
          {'text': 'Imphal', 'score': 0},
          {'text': 'Panaji', 'score': 0},
        ],
      },
      {
        'questionText':
            'Which of the following states is not located in the North?',
        'answers': [
          {'text': 'Jharkhand', 'score': 10},
          {'text': 'Jammu and Kashmir', 'score': 0},
          {'text': 'Himachal Pradesh', 'score': 0},
          {'text': 'Haryana', 'score': 0},
        ],
      },
      {
        'questionText': 'In which state is the main language Khasi?',
        'answers': [
          {'text': 'Mizoram', 'score': 0},
          {'text': 'Nagaland', 'score': 0},
          {'text': 'Meghalaya', 'score': 10},
          {'text': 'Tripura', 'score': 0},
        ],
      },
      {
        'questionText': 'Which is the largest coffee producing state of India?',
        'answers': [
          {'text': 'Kerala', 'score': 0},
          {'text': 'Tamil Nadu', 'score': 0},
          {'text': 'Karnataka', 'score': 10},
          {'text': 'Arunachal Pradesh', 'score': 0},
        ],
      },
      {
        'questionText': 'Which state has the largest area?',
        'answers': [
          {'text': 'Maharashtra', 'score': 0},
          {'text': 'Madhya Pradesh', 'score': 0},
          {'text': 'Uttar Pradesh', 'score': 0},
          {'text': 'Rajasthan', 'score': 10},
        ],
      },
      {
        'questionText': 'In what state is the Elephant Falls located?',
        'answers': [
          {'text': 'Mizoram', 'score': 0},
          {'text': 'Orissa', 'score': 0},
          {'text': 'Manipur', 'score': 0},
          {'text': 'Meghalaya', 'score': 10},
        ],
      },
      {
        'questionText':
            'India is a federal union comprising twenty-nine states and how many union territories?',
        'answers': [
          {'text': '6', 'score': 0},
          {'text': '7', 'score': 10},
          {'text': '8', 'score': 0},
          {'text': '9', 'score': 0},
        ],
      },
      {
        'questionText':
            ' What are the major languages spoken in Andhra Pradesh?',
        'answers': [
          {'text': 'English and Telugu', 'score': 0},
          {'text': 'Telugu and Urdu', 'score': 10},
          {'text': 'Telugu and Kannada', 'score': 0},
          {'text': 'All of the above languages', 'score': 0},
        ],
      },
      {
        'questionText': 'What is the state flower of Haryana?',
        'answers': [
          {'text': 'Lotus', 'score': 10},
          {'text': 'Rhododendron', 'score': 0},
          {'text': 'Golden Shower', 'score': 0},
          {'text': 'Not declared', 'score': 0},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, reset),
      ),
    );
  }
}
