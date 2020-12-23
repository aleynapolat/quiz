import 'Question.dart';
import 'Option.dart';

class QuizManager_2 {
  QuizManager_2() {
    _questions.add(Question('Türkiye' 'nin başkenti neresidir?', [
      Option('Ankara', 10),
      Option('İstanbul', 5),
      Option('Zurich', 0),
      Option('Fransa', -5),
    ]));

    _questions.add(Question('Fransa' 'nın başkenti neresidir?', [
      Option('Paris', 10),
      Option('Milano', 5),
      Option('Lens', 0),
      Option('Türkiye', -5),
    ]));
    _questions.add(Question('İngiltere' 'nin başkenti neresidir?', [
      Option('Londra', 10),
      Option('Leeds', 5),
      Option('İstanbul', 0),
      Option('Africa', -5),
    ]));

    _questions.add(Question('Almanya' 'nin başkenti neresidir?', [
      Option('Berlin', 10),
      Option('Hamburg', 5),
      Option('Napoli', 0),
    ]));
    _questions.shuffle();
    for (var question in _questions) {
      question.options.shuffle();
    }
  }
  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
