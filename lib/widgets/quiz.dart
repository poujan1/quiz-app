import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {required this.question,
      required this.questionIndex,
      required this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Question(
          // question.elementAt(questionIndex),
          question.elementAt(questionIndex)['questionText'] as String,
        ),
        ...(question.elementAt(questionIndex)['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestions(answer['score']),
            answerText: answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
