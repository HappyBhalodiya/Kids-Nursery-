import 'package:nursery_rhymes/screens/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('5 + 2 = ?', '7', '2', '7', '6', '1'),
    Question('10 + 3 = ?', '13', '2', '7', '8', '13'),
    Question('2 + 3 = ?', '5', '5', '7', '8', '6'),
    Question('1 + 3 = ?', '4', '9', '4', '8', '0'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  String getOption1() {
    return _questionBank[_questionNumber].option1;
  }

  String getOption2() {
    return _questionBank[_questionNumber].option2;
  }

  String getOption3() {
    return _questionBank[_questionNumber].option3;
  }

  String getOption4() {
    return _questionBank[_questionNumber].option4;
  }
}
