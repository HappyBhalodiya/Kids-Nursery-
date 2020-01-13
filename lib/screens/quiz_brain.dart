import 'package:nursery_rhymes/screens/question.dart';

class QuizBrainAddition {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('5 + 2 = ?', '7', '2', '7', '6', '1'),
    Question('10 + 3 = ?', '13', '2', '7', '8', '13'),
    Question('2 + 3 = ?', '5', '5', '7', '8', '6'),
    Question('1 + 3 = ?', '4', '9', '4', '8', '0'),
    Question('2 + 6 = ?', '8', '7', '2', '0', '8'),
    Question('9 + 9 = ?', '18', '12', '17', '18', '16'),
    Question('8 + 6 = ?', '14', '12', '14', '18', '23'),
    Question('5 + 7 = ?', '12', '10', '11', '12', '13'),
    Question('9 + 7 = ?', '16', '16', '12', '18', '10'),
    Question('5 + 5 = ?', '10', '7', '3', '10', '12'),
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

class QuizBrainSubtraction {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('5 - 2 = ?', '3', '2', '3', '6', '1'),
    Question('10 - 3 = ?', '7', '2', '7', '8', '7'),
    Question('3 - 2 = ?', '1', '1', '7', '8', '6'),
    Question('3 - 1 = ?', '2', '9', '2', '8', '0'),
    Question('6 - 2 = ?', '4', '7', '2', '0', '4'),
    Question('9 - 9 = ?', '0', '12', '17', '0', '16'),
    Question('8 - 6 = ?', '2', '12', '2', '18', '23'),
    Question('7 - 5 = ?', '2', '10', '11', '2', '13'),
    Question('9 - 7 = ?', '2', '2', '12', '18', '10'),
    Question('5 - 5 = ?', '0', '7', '3', '0', '12'),
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


class QuizBrainMultiplication {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('5 * 2 = ?', '10', '2', '10', '6', '1'),
    Question('10 * 3 = ?', '30', '2', '7', '8', '30'),
    Question('2 * 3 = ?', '6', '6', '7', '8', '6'),
    Question('1 * 3 = ?', '3', '9', '3', '8', '0'),
    Question('2 * 6 = ?', '12', '7', '2', '0', '12'),
    Question('9 * 9 = ?', '81', '12', '17', '81', '16'),
    Question('8 * 6 = ?', '42', '12', '42', '18', '23'),
    Question('5 * 7 = ?', '35', '10', '11', '35', '13'),
    Question('9 * 7 = ?', '63', '63', '12', '18', '10'),
    Question('5 * 5 = ?', '25', '7', '3', '25', '12'),
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

class QuizBrainDivision {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('10 / 2 = ?', '5', '2', '5', '6', '1'),
    Question('6 / 2 = ?', '3', '2', '7', '8', '3'),
    Question('2 / 1 = ?', '1', '1', '7', '8', '6'),
    Question('12 / 2 = ?', '6', '9', '6', '8', '0'),
    Question('12 / 4 = ?', '3', '7', '2', '0', '3'),
    Question('9 / 3 = ?', '3', '12', '17', '3', '16'),
    Question('20 / 4 = ?', '5', '12', '5', '18', '23'),
    Question('36 / 6 = ?', '6', '10', '11', '6', '13'),
    Question('28 / 4 = ?', '7','7', '12', '18', '10'),
    Question('5 / 5 = ?', '0', '7', '3', '0', '12'),
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
