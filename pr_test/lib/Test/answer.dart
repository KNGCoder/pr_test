import 'package:flutter/material.dart';

//контейнер кнопок

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  final String answerTest;
  const Answer(this.selectHandler, this.answerTest, {super.key} );
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFe1dcd6), 
                    width: 1),
                ),
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: MaterialButton(
        onPressed: selectHandler,
        child: Text(
          answerTest, 
          style: const TextStyle(
            fontSize: 50, 
            color: Color(0xFFe1dcd6),
            fontWeight: FontWeight.w200
            ), ),
      ),
    );
  }
}
