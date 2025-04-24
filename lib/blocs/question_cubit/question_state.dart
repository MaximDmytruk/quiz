part of 'question_cubit.dart';

enum QuestionStatus { initial, loaded,inProgress,finished }

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    @Default(QuestionStatus.initial) QuestionStatus status,
    @Default([]) List<QuestionModel> questions,
    @Default(0) int currentIndex,
    @Default(0) int correctAnswers,
    @Default([]) List<int> history,
  }) = _QuestionState;
}
