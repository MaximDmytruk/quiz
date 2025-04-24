import 'package:flutter/material.dart';
import 'package:quiz/screens/question_screen/question_screen.dart';
import 'package:quiz/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: {QuestionScreen.routeName: (context) => QuestionScreen()},
    );
  }
}
