import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function selectHandler;
  final answerText;

  Answer({required this.selectHandler, required this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          selectHandler();
        },
        child: Text(answerText),
      ),
    );
  }
}
