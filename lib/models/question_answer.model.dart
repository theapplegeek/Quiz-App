import 'answer_option.model.dart';

class QuestionAnswer {
  String question;
  String answer;
  List<AnswerOption> options;

  QuestionAnswer(
      {required this.question, this.answer = '', required this.options});

  List<String> getOptionsText() {
    return options.map((e) => e.name).toList();
  }
}
