import 'package:flutter/material.dart';
import 'package:pr_test/Test/result.dart';
import 'package:pr_test/Test/quiz.dart';
import 'package:pr_test/my_app.dart';
import 'package:pr_test/add.dart';

void main() => runApp(const MyApp());

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  
  final _quest = tests.shuffle();
  
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
        backgroundColor: const Color(0xFF486c5e) ,
          body: _questIndex < tests.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Quiz(
                        quest: tests,
                        answerQuestion: _answerQuestion,
                        questIndex: _questIndex)
                  ],
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

