import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What \'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Black', 'score': 6},
        {'text': 'Yellow', 'score': 5},
      ],
    },
    {
      'questionText': 'What \'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 8},
        {'text': 'Cat', 'score': 7},
        {'text': 'Dog', 'score': 5},
      ],
    },
    {
      'questionText': 'Who \'s your favorite Instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 8},
        {'text': 'Max', 'score': 7},
        {'text': 'Max', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App!'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuiz)));
  }
}
