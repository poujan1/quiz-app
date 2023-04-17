import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;

  final int totalScore;
  Result({required this.reset, required this.totalScore});
  // int  finalScoreCounter;
  String get resultPhrase {
    var resultText;
    if (totalScore <= 5) {
      resultText = "You are awesome and innocent!!!🤪";
    } else if (totalScore <= 8) {
      resultText = "You are good enough to discriminate!!!🥰";
    } else if (totalScore <= 10) {
      resultText = "You are a preety good chooser😃!!!";
    } else if (totalScore <= 15) {
      resultText = "Opps!....You are clever freak!🤣🥹";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              letterSpacing: 1.23,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            reset.call();
          },
          child: Text("Restart the quiz!!"),
        )
      ],
    );
  }
}
