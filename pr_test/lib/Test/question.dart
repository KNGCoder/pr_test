import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quetsionText;

  const Question(this.quetsionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      child: Text(
        quetsionText,
        style: const TextStyle(fontSize: 22, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
