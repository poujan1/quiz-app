import 'package:flutter/material.dart';
import 'package:scorecounter/widgets/quiz.dart';
import 'package:scorecounter/widgets/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> question = [
    {
      'questionText': 'What is your favorite color',
      'answers': [
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 5},
        {'text': 'Gray', 'score': 2},
        {'text': 'Blue', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your favorite movie',
      'answers': [
        {'text': '1914 ', 'score': 1},
        {'text': 'Shawshank Redemption', 'score': 3},
        {'text': 'Sherlock Holmes', 'score': 2},
        {'text': 'Inception', 'score': 5},
      ]
    },
    {
      'questionText': 'What is your favorite Social Media Application',
      'answers': [
        {'text': 'Youtube ', 'score': 4},
        {'text': 'Facebook', 'score': 1},
        {'text': 'Instagram', 'score': 2},
        {'text': 'Linkdin', 'score': 5},
      ]
    },
  ];
  var reset = 0;
  var questionIndex = 0;

  var totalScore = 0;
  // var finalScore = 0;

  void resetToDefault() {
    if (questionIndex == question.length) {
      setState(() {
        questionIndex = reset;
        totalScore = reset;
      });
    }
  }

  void answerQuestions(int scoreNumber) {
    totalScore = totalScore + scoreNumber;
    // totalScore+=scoreNumber;
    setState(() {
      questionIndex = questionIndex + 1;

      // resetToDefault();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color.fromARGB(100, 100, 100, 10),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "MyApp",
            style: TextStyle(),
          ),
        ),
        body: questionIndex < question.length
            ? Quiz(
                question: question,
                questionIndex: questionIndex,
                answerQuestions: answerQuestions,
              )
            : Result(
                reset: resetToDefault,
                totalScore: totalScore,
              ),
      ),
    );
  }
}
