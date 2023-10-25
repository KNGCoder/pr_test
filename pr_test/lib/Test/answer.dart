import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  final String answerTest;
  const Answer(this.selectHandler, this.answerTest, {super.key} );
  @override
  Widget build(BuildContext context){
    return Container(
       color: const Color(0xFFe3e2c3),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
      child: MaterialButton(
        onPressed: selectHandler,
        child: Text(
          answerTest, 
          style: const TextStyle(
            fontSize: 50, 
            color: Color(0xFF000000),
            fontWeight: FontWeight.w300
            ), ),
      ),
    );
  }
}

 // backgroundColor: MaterialStateProperty.all(Color(0xFFf0efe2)),
 // foregroundColor: MaterialStateProperty.all(Color(0xFFe3e2c3)),