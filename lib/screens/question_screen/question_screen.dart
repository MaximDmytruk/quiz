import 'package:flutter/material.dart';
import 'package:quiz/constants/colors_app.dart';
import 'package:quiz/constants/text_app.dart';

class QuestionScreen extends StatefulWidget {
  static const String routeName = '/question_screen';

  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundColor,
        title: Text(
         TextApp.questions,
          style: TextStyle(
            color: ColorsApp.headerTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
