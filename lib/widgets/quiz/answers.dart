import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_option.model.dart';

import 'answer.dart';

class Answers extends StatelessWidget {
  final List<AnswerOption> answersOptions;
  final Function(int) callback;

  const Answers(
      {required this.answersOptions, required this.callback, Key? key})
      : super(key: key);

  List<Widget> generateAnswerButtons() {
    List<Widget> buttons = [];
    for (var option in answersOptions) {
      buttons.add(Answer(answerOption: option, callback: callback));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: generateAnswerButtons(),
    );
  }
}
