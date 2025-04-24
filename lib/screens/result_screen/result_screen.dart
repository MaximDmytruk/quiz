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
            padding: EdgeInsets.only(
              top: 200.0,
              left: 30.0,
              right: 30,
              bottom: 10,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ваша кількість правильних відповідей: ${state.correctAnswers}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 80),

                  CustomButton(
                    name: TextApp.tryAgain,
                    onPressed: () {
                      tryAgainAction(context);
                    },
                  ),
                  SizedBox(height: 60.0),
                  if (state.history.isNotEmpty) ...[
                    Text(
                      TextApp.resultsHistory,
                      style: TextStyle(fontSize: 20),
                    ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: state.history.length,
                        itemBuilder: (context, index) {
                          final int result = state.history[index];
                          return Center(
                            child: Text(
                              '${TextApp.quizNumber} ${index + 1} - $result',
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
