import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler,{super.key});

  String get resultPhrase{
    String resultText;
    if (resultScore <= 10) {resultText = 'Тест не пройден. Вы набрали $resultScore баллов';}
    else if (resultScore <= 20) {resultText = 'Тест не пройден. Вы набрали $resultScore баллов';}
    else if (resultScore <= 30) {resultText = 'Тест пройден. Вы набрали $resultScore баллов';}
    else {resultText = 'Тест не пройден.';}
    return resultText;
  }
  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                textStyle: const TextStyle(fontSize: 18)),
              onPressed: resetHandler,
              child: const Text('Пройти заново.')),
          )
        ],
      ),
    );
  }
}