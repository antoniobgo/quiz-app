import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    // return const Center(
    return const SizedBox(
      // child: SizedBox(
      width: double.infinity,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The questions...'),
          SizedBox(height: 30),
          ElevatedButton(onPressed: null, child: Text('Answer 1')),
          ElevatedButton(onPressed: null, child: Text('Answer 2')),
          ElevatedButton(onPressed: null, child: Text('Answer 3')),
          ElevatedButton(onPressed: null, child: Text('Answer 4')),
        ],
      ),
    );
    // );
  }
}
