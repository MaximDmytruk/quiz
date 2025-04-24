import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionState(status: QuestionStatus.initial));

  void test() {
    emit(state.copyWith(status: QuestionStatus.loaded));
  }
}
