import 'package:flutter/material.dart';
import 'package:quiz/models/question_model/question_model.dart';
import 'package:quiz/widgets/buttons/custom_button.dart';

class QuestionColumn extends StatelessWidget {
  final QuestionModel question;
  final Function(String) onOptionSelected;

  const QuestionColumn({
    super.key,
    required this.question,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 8,
      children: [
        Text(
          question.text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),

        for (String option in question.options)
          CustomButton(
            name: option,
            onPressed: () {
              onOptionSelected(option);
            },
          ),
      ],
    );
  }
}
