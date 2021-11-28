import 'package:flutter/material.dart';
import 'package:myapp/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final List<Map> _questions = const [
    {
      'questionText': "What's Your Favorite Book ?",
      'answer': ["No Man's Land", "Witcher The Wild Hunt", "Prince of Persia"],
    },
    {
      'questionText': "Who was Chester Bennington ?",
      'answer': ["Guitarist", "Vocalist", "Drummer"],
    },
    {
      'questionText': "Which Os does Samsung Phone use ?",
      'answer': ["Android", "IOS", "Symbian"],
    },
  ];

  void _answerQuestion() {
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
