import 'package:quiz/models/question_model/question_model.dart';

final List<QuestionModel> questionsList = [
  QuestionModel(
    text: "How much is 2 + 2 ?",
    options: ["3", "4", "5", "8"],
    correctAnswer: "4",
  ),
  QuestionModel(
    text: "How many paws does a dog have??",
    options: ["2", "9", "4"],
    correctAnswer: "4",
  ),
  QuestionModel(
    text: "What is the capital of Ukraine?",
    options: ["Lviv", "Kyiv", "Kharkiv"],
    correctAnswer: "Kyiv",
  ),

  QuestionModel(
    text: "Who invented electricity?",
    options: [
      "Benjamin Franklin",
      "My neighbor who just wanted to charge his phone",
      "Tesla, but not Elon",
      "God Thor",
    ],
    correctAnswer: "Tesla, but not Elon",
  ),
  QuestionModel(
    text: "Which came first: the chicken or the egg?",
    options: [
      "The egg, because dinosaurs came first",
      "This is a philosophical bug",
    ],
    correctAnswer: "This is a philosophical bug",
  ),
  QuestionModel(
    text: "How genetically similar is a human to a banana?",
    options: ["About 40-60%", "100% - We are bananas!", "84%"],
    correctAnswer: "About 40-60%",
  ),
];
