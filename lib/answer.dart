import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 160, 226, 236)),
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 214, 121, 183)),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
