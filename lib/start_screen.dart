import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 70, 35, 167),
        Color.fromARGB(255, 116, 69, 244)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 22, color: Colors.white70),
          ),
          const OutlinedButton(
              onPressed: null,
              child: Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ))
        ]),
      ),
    );
  }
}
