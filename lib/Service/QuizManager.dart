import 'Question.dart';
import 'Option.dart';

class QuizManager {
  QuizManager() {
    _questions.add(Question('Dik açı kaç derecedir?', [
      Option('12', 0),
      Option('bilmem', 5),
      Option('90', 10),
      Option('80', -5),
    ]));

    _questions.add(Question('Geniş açı kaç derecedir?', [
      Option('5', 0),
      Option('bilmem', 5),
      Option('120', 10),
      Option('90', -5),
    ]));
    _questions.add(Question('Bugün nasıl hissediyorsun?', [
      Option('İyi', -5),
      Option('Çok iyi', 5),
      Option('Daha da iyi', 0),
      Option('Bomba gibi', 10),
    ]));

    _questions.add(Question('Okulunu seviyor musun?', [
      Option('hayır', 0),
      Option('bazen', 10),
      Option('evet', 5),
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
    print('getCurrentQueestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
