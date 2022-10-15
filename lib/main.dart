import 'package:flutter/cupertino.dart';
import 'package:quiz_app/models/answer_option.model.dart';
import 'package:quiz_app/models/question_answer.model.dart';
import 'package:quiz_app/widgets/quiz/quiz.dart';
import 'package:quiz_app/widgets/result/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var _totalScore = 0;

  final _questionAnswer = [
    QuestionAnswer(question: "what's your favorite color?", options: [
      AnswerOption(name: 'red', score: 6),
      AnswerOption(name: 'blue', score: 6),
      AnswerOption(name: 'yellow', score: 3),
      AnswerOption(name: 'blue', score: 5),
      AnswerOption(name: 'orange', score: 4),
      AnswerOption(name: 'black', score: 3),
      AnswerOption(name: 'green', score: 6),
      AnswerOption(name: 'white', score: 2),
      AnswerOption(name: 'grey', score: 4),
    ]),
    QuestionAnswer(question: "what's your favorite animal?", options: [
      AnswerOption(name: 'cat', score: 1),
      AnswerOption(name: 'dog', score: 5),
      AnswerOption(name: 'dragon', score: 6),
      AnswerOption(name: 'snake', score: 2),
      AnswerOption(name: 'lion', score: 4),
      AnswerOption(name: 'elephant', score: 2),
      AnswerOption(name: 'monkey', score: 6),
      AnswerOption(name: 'horse', score: 5),
      AnswerOption(name: 'pig', score: 4),
    ]),
    QuestionAnswer(question: "what's your favorite food?", options: [
      AnswerOption(name: 'sushi', score: 8),
      AnswerOption(name: 'pizza', score: 7),
      AnswerOption(name: 'pasta', score: 5),
      AnswerOption(name: 'rice', score: 2),
      AnswerOption(name: 'cake', score: 6),
      AnswerOption(name: 'apple', score: 3),
      AnswerOption(name: 'crepes', score: 4),
      AnswerOption(name: 'chips', score: 3)
    ])
  ];

  void _onAnswerPress(int score) {
    if (_questionsIndex < _questionAnswer.length) {
      setState(() {
        _questionsIndex++;
        _totalScore += score;
      });
    }
  }

  void _onRestartPress() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'QUIZ APP',
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
          scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
          primaryColor: CupertinoColors.white,
          textTheme:
              CupertinoTextThemeData(primaryColor: CupertinoColors.white),
          brightness: Brightness.dark,
          barBackgroundColor: CupertinoColors.black),
      home: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
              middle: Text('QUIZ APP'), backgroundColor: CupertinoColors.black),
          child: _questionsIndex < _questionAnswer.length
              ? Quiz(
                  questionAnswer: _questionAnswer,
                  onAnswerPress: _onAnswerPress,
                  questionsIndex: _questionsIndex)
              : Result(
                  onRestartPress: _onRestartPress,
                  totalScore: _totalScore,
                )),
    );
  }
}
