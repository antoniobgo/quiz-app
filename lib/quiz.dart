import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen({String screenName = 'questions-screen'}) {
    setState(() {
      // activeScreen = 'questions-screen';
      activeScreen = screenName;
    });
  }

  @override
  Widget build(contenxt) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 70, 35, 167),
                Color.fromARGB(255, 116, 69, 244)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: activeScreen == 'start-screen'
                ? StartScreen(switchScreen)
                : activeScreen == 'results-screen'
                    ? ResultsScreen(
                        chosenAnswers: selectedAnswers,
                        onTap: () {
                          switchScreen(screenName: 'questions-screen');
                        })
                    : QuestionsScreen(chooseAnswer)),
      ),
    );
  }
}
