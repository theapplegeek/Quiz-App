import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({required this.questionText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20, bottom: 15, left: 15, right: 15),
        padding: const EdgeInsets.symmetric(vertical: 50),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1, color: CupertinoColors.white),
        ),
        child: Text(
          questionText.toUpperCase(),
          style: const TextStyle(fontSize: 21),
          textAlign: TextAlign.center,
        ));
  }
}
