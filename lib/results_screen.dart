import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onTap});

  final List<String> chosenAnswers;
  final void Function() onTap;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'chosen_answer': chosenAnswers[i],
        'correct_answer': questions[i].answers[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectAnswers of $numTotalQuestions questions correctly!'),
            const SizedBox(height: 30),
            QuestionssSummary(getSummaryData()),
            const SizedBox(height: 30),
            TextButton(onPressed: onTap, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
