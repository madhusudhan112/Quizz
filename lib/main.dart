import 'package:flutter/material.dart';
import 'package:myapp/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final List<Map> _questions = const [
    {
      'questionText': "From where the Geralt of Rivia Character Came From ?",
      'answers': [
        {'text': "No Man's Land", 'score': 0},
        {'text': "Witcher The Wild Hunt", 'score': 10},
        {'text': "Prince of Persia",'score':0}
      ],
    },
    {
      'questionText': "Who is Chester Bennington ?",
      'answers': [
        {'text': "Drummer", 'score': 0},
        {'text': "Guitarist", 'score': 0},
        {'text': "Vocalist",'score': 10}
      ],
    },
    {
      'questionText': "Which Os Does Iphone user ?",
      'answers': [
        {'text': "Android/Linux", 'score': 0},
        {'text': "IOS", 'score': 10},
        {'text': "Symbian",'score':0}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Todo List"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
