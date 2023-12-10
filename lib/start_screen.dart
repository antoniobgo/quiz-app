import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onPressed, {super.key});

  final void Function() onPressed;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: Colors.white70),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(fontSize: 24, color: Colors.white70),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            // style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ),
      ]),
    );
  }
}
