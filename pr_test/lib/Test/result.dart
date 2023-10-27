import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler,{super.key});

  String get resultPhrase{
    String resultText;
    if (resultScore <= 3) 
    {resultText = 'Вы правильно ответили на $resultScore из 18 вопросов. \n Плохой день? Зато теперь ты знаешь , что все это было ложью';}
    else if (resultScore <= 6) 
    {resultText = 'Вы правильно ответили на $resultScore из 18 вопросов. \n Могло бы быть и лучше! Да ладно, неужели вы правда во все это верите? ';}
    else if (resultScore <= 10) 
    {resultText = 'Вы правильно ответили на $resultScore из 18 вопросов. \n Неплохо... Хотя вас довольно просто обмануть!';}
    else if (resultScore <= 14) 
    {resultText = 'Вы правильно ответили на $resultScore из 18 вопросов. \n Хорошо. Неплохо, но не идеально.';}
    else if (resultScore <= 18) 
    {resultText = 'Вы правильно ответили на $resultScore из 18 вопросов. \n Отлично! Прекрасный результат!';}
    else {resultText = 'Тест не пройден.';}
    return resultText;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor: const Color(0xFF486c5e),
    body: Container(
      margin: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 45, 
              fontWeight: FontWeight.w300, 
              color: Color(0xFFc1986c))),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF2d4643),
                textStyle: const TextStyle(fontSize: 30)),
              onPressed: resetHandler,
              child: const Text('Пройти заново.')),
          )
        ],
      ),
    )
    );
  }
}