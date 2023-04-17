import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final questions;
  Question(this.questions);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        widget.questions,
        style: const TextStyle(
          letterSpacing: 1.25,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
