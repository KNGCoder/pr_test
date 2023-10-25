import 'package:flutter/material.dart';
import 'package:pr_test/Test/result.dart';
import 'package:pr_test/Test/quiz.dart';
import 'package:pr_test/my_app.dart';

void main() => runApp(const MyApp());

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final _quest = const [
    {
      'questionText': 'vopros1',
      'answers': [
        {'text': 'da', 'score': 1},
        {'text': 'net', 'score': 0}
      ]
    },
    {
      'questionText': 'vopros2',
      'answers': [
        {'text': 'da', 'score': 1},
        {'text': 'net', 'score': 0}
      ]
    },
  ];

  var _questIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questIndex = _questIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
          body: _questIndex < _quest.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Quiz(
                        quest: _quest,
                        answerQuestion: _answerQuestion,
                        questIndex: _questIndex)
                  ],
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
