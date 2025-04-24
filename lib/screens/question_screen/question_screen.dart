import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/blocs/question_cubit/question_cubit.dart';
import 'package:quiz/constants/colors_app.dart';
import 'package:quiz/constants/text_app.dart';
import 'package:quiz/models/question_model/question_model.dart';
import 'package:quiz/screens/question_screen/widgets/question_column.dart';
import 'package:quiz/screens/result_screen/result_screen.dart';
import 'package:quiz/widgets/app_bars/custom_app_bar.dart';
import 'package:quiz/widgets/buttons/custom_button.dart';

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

  final List<QuestionModel> sampleQuestions = [
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
    return BlocBuilder<QuestionCubit, QuestionState>(
      builder: (context, state) {
        if (state.status == QuestionStatus.finished) {
          return ResultScreen();
        }
        final QuestionModel currentQuestion =
            state.questions[state.currentIndex];
        return Scaffold(
          backgroundColor: ColorsApp.backgroundColor,
          appBar: CustomAppBar(name: TextApp.questions),
          body: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              child: QuestionColumn(
                key: ValueKey(currentQuestion.text),
                question: currentQuestion,
                onOptionSelected: (selectedOption) {
                  context.read<QuestionCubit>().selectAnswer(selectedOption);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
