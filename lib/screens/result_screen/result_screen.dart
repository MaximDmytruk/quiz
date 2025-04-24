import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/blocs/question_cubit/question_cubit.dart';
import 'package:quiz/constants/colors_app.dart';
import 'package:quiz/constants/text_app.dart';
import 'package:quiz/widgets/app_bars/custom_app_bar.dart';
import 'package:quiz/widgets/buttons/custom_button.dart';

class ResultScreen extends StatelessWidget {
  static const String routeName = "/result_creen";
  const ResultScreen({super.key});

  void tryAgainAction(BuildContext context) {
    context.read<QuestionCubit>().resetQuiz();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      appBar: CustomAppBar(name: TextApp.resultQuiz),
      body: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 30.0),
            child: Center(
              child: Column(
                spacing: 80,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ваша кількість правильних відповідей: ${state.correctAnswers}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  CustomButton(
                    name: TextApp.tryAgain,
                    onPressed: () {
                      tryAgainAction(context);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
