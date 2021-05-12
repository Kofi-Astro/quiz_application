import 'package:flutter/material.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'question': 'What is your name',
      'answer': ['Kelvin', 'Opoku', 'Agyemang', 'Kofi']
    },
    {
      'question': 'I love you',
      'answer': ['Mum', 'Dad', 'Agyemang', 'Kofi']
    },
    {
      'question': 'Where are you',
      'answer': ['Kumasi', 'Accra', 'Amasaman', 'Kofi']
    },
    {
      'question': 'What is your favourite color',
      'answer': ['Kelvin', 'Opoku', 'Agyemang', 'Kofi']
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
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Center(
                child: Text('You are done'),
              ),
      ),
    );
  }
}
