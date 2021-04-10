import 'package:demo/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your fav color?',
      'answers': ['Black', 'Red', 'Green', 'white'],
    },
    {
      'questionText': 'what is your fav animal?',
      'answers': ['rabbit', 'snake', 'elephant', 'lion'],
    },
    {
      'questionText': 'what is your fav instructor?',
      'answers': ['max', 'max', 'max', 'max'],
    },
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
