import 'package:Muslim/models/questions.dart';
import 'package:flutter/material.dart';
import 'package:Muslim/models/quiz_model.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<bool> answers = [];
  int _currentQuestionIndex = 0;
  final List<Question> questions = allQuestions;

  int rightAnswers(List<bool> answers) {
    int rights = 0;
    for (bool answer in answers) {
      if (answer) {
        rights++;
      }
    }
    return rights;
  }

  void _answerQuestion(int selectedAnswerIndex) {
    answers.add(
      selectedAnswerIndex == questions[_currentQuestionIndex].correctAnswer,
    );
    if (_currentQuestionIndex != questions.length - 1) {
      _currentQuestionIndex++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Savol - javob'),
        centerTitle: true,
      ),
      body: answers.length != questions.length
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      questions[_currentQuestionIndex].questionText,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: questions[_currentQuestionIndex]
                        .answerOptions
                        .asMap()
                        .entries
                        .map((entry) {
                      final int index = entry.key;
                      final String answer = entry.value;
                      return ElevatedButton(
                        onPressed: () => _answerQuestion(index),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          answer,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            )
          : Center(
              child: Text(
                "Siz ${rightAnswers(answers)}ta to'g'ri va ${questions.length - rightAnswers(answers)}ta noto'g'ri javob berdingiz !",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
