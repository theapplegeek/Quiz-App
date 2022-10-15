import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_answer.model.dart';
import 'package:quiz_app/widgets/quiz/question.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final int questionsIndex;
  final List<QuestionAnswer> questionAnswer;
  final Function(int) onAnswerPress;

  const Quiz(
      {required this.questionAnswer,
      required this.onAnswerPress,
      required this.questionsIndex,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionText: questionAnswer[questionsIndex].question),
      Answers(
          answersOptions: questionAnswer[questionsIndex].options,
          callback: onAnswerPress)
    ]);
  }
}
