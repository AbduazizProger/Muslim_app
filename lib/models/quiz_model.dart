class Question {
  int? givenAnswer;
  final int correctAnswer;
  final String questionText;
  final List<String> answerOptions;

  void setAnswer(int newAnswer) {
    givenAnswer = newAnswer;
  }

  Question(this.questionText, this.answerOptions, this.correctAnswer);
}
