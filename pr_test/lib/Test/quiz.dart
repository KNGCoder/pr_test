import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget{
  const Quiz(
    {super.key,
    required this.quest,
    required this.answerQuestion,
    required this.questIndex});

  final List<Map<String, Object>>quest;
  final Function answerQuestion;
  final int questIndex;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Question(quest[questIndex]['questionText']?.toString() ?? '' ),
        ...(quest[questIndex]['answers'] as List<Map<String, Object>>)
            .map((answer){
          return Answer(() => answerQuestion(answer['score']),
             answer['text']?.toString() ?? '');
        }).toList()
      ],
    );
  } 
}