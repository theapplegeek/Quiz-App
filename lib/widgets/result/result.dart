import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz/question.dart';
import 'package:quiz_app/widgets/result/restart_button.dart';

import '../quiz/answer.dart';

class Result extends StatelessWidget {
  final VoidCallback onRestartPress;
  final int totalScore;

  const Result(
      {Key? key, required this.onRestartPress, required this.totalScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'You have got $totalScore points',
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        RestartButton(text: 'Restart', callback: onRestartPress)
      ],
    );
  }
}
