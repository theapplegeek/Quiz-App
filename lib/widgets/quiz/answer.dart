import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_option.model.dart';

class Answer extends StatelessWidget {
  final AnswerOption answerOption;
  final Function(int) callback;

  const Answer({required this.answerOption, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: CupertinoButton.filled(
          onPressed: () => callback(answerOption.score),
          child: Text(answerOption.name.toUpperCase())),
    );
  }
}
