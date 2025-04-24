part of 'question_cubit.dart';

enum QuestionStatus { initial, loaded }

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    @Default(QuestionStatus.initial) QuestionStatus status,
  }) = _QuestionState;
}
