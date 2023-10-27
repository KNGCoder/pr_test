import 'package:flutter/material.dart';

// контейнер вопроса

class Question extends StatelessWidget {
  final String quetsionText;

  const Question(this.quetsionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      child: Text(
        quetsionText,
        style: const TextStyle(
          fontSize: 35, 
          fontWeight: FontWeight.w300, 
          color: Color(0xFFd7c6b4)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
