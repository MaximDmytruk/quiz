import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/blocs/question_cubit/question_cubit.dart';
import 'package:quiz/constants/colors_app.dart';
import 'package:quiz/constants/text_app.dart';
import 'package:quiz/models/question_model/question_model.dart';

class QuestionScreen extends StatefulWidget {
  static const String routeName = '/question_screen';

  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    context.read<QuestionCubit>().loadQuestions(sampleQuestions);
    super.initState();
  }

  final sampleQuestions = [
    QuestionModel(
      text: "Скільки буде 2 + 2 ?",
      options: ["3", "4", "5"],
      correctAnswer: "4",
    ),
    QuestionModel(
      text: "Яка столиця України?",
      options: ["Львів", "Київ", "Харків"],
      correctAnswer: "Київ",
    ),
    QuestionModel(
      text: "Скільки континентів на Землі?",
      options: ["5", "6", "7"],
      correctAnswer: "7",
    ),
  ];

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
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          if (state.status == QuestionStatus.finished) {
            return Placeholder();
          }
          final QuestionModel currentQuestion =
              state.questions[state.currentIndex];
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  currentQuestion.text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                for (String option in currentQuestion.options)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: () {
                      context.read<QuestionCubit>().selectAnswer(option);
                    },
                    child: Text(
                      option,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}




  //   return Scaffold(
  //     backgroundColor: ColorsApp.backgroundColor,
  //     appBar: AppBar(
  //       backgroundColor: ColorsApp.backgroundColor,
  //       title: Text(
  //        TextApp.questions,
  //         style: TextStyle(
  //           color: ColorsApp.headerTextColor,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       centerTitle: true,
  //     ),
  //   );
  // }