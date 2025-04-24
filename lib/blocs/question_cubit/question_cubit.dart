import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/models/question_model/question_model.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionState(status: QuestionStatus.initial));

  void loadQuestions(List<QuestionModel> questions) {
    emit(
      state.copyWith(
        status: QuestionStatus.inProgress,
        questions: questions,
        currentIndex: 0,
        correctAnswers: 0,
      ),
    );
  }

  void selectAnswer(String selected) {
    final QuestionModel currentQuestion = state.questions[state.currentIndex];
    final bool isCorrect = selected == currentQuestion.correctAnswer;
    final int updatedCorrect =
        isCorrect ? state.correctAnswers + 1 : state.correctAnswers;

    final bool isLast = state.currentIndex == state.questions.length - 1;

    emit(
      state.copyWith(
        currentIndex: state.currentIndex + 1,
        correctAnswers: updatedCorrect,
        status: isLast ? QuestionStatus.finished : QuestionStatus.inProgress,
      ),
    );
  }

  void resetQuiz() {
    emit(
      state.copyWith(
        history: [...state.history, state.correctAnswers],
        currentIndex: 0,
        correctAnswers: 0,
        status: QuestionStatus.initial,
      ),
    );
  }
}
