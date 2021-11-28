import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result({required this.resultScore});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 30) {
      resultText = "You are Brilliant";
    } else if (resultScore >= 20) {
      resultText = "You are Average";
    } else if (resultScore >= 10) {
      resultText = "You need More Practise";
    } else {
      resultText = "You Failed";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
            fontWeight: FontWeight.w800, fontSize: 40, color: Colors.blue),
      ),
    );
  }
}
