// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuestionState {
  QuestionStatus get status => throw _privateConstructorUsedError;
  List<QuestionModel> get questions => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
    QuestionState value,
    $Res Function(QuestionState) then,
  ) = _$QuestionStateCopyWithImpl<$Res, QuestionState>;
  @useResult
  $Res call({
    QuestionStatus status,
    List<QuestionModel> questions,
    int currentIndex,
    int correctAnswers,
  });
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? questions = null,
    Object? currentIndex = null,
    Object? correctAnswers = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as QuestionStatus,
            questions:
                null == questions
                    ? _value.questions
                    : questions // ignore: cast_nullable_to_non_nullable
                        as List<QuestionModel>,
            currentIndex:
                null == currentIndex
                    ? _value.currentIndex
                    : currentIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            correctAnswers:
                null == correctAnswers
                    ? _value.correctAnswers
                    : correctAnswers // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuestionStateImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$QuestionStateImplCopyWith(
    _$QuestionStateImpl value,
    $Res Function(_$QuestionStateImpl) then,
  ) = __$$QuestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    QuestionStatus status,
    List<QuestionModel> questions,
    int currentIndex,
    int correctAnswers,
  });
}

/// @nodoc
class __$$QuestionStateImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionStateImpl>
    implements _$$QuestionStateImplCopyWith<$Res> {
  __$$QuestionStateImplCopyWithImpl(
    _$QuestionStateImpl _value,
    $Res Function(_$QuestionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? questions = null,
    Object? currentIndex = null,
    Object? correctAnswers = null,
  }) {
    return _then(
      _$QuestionStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as QuestionStatus,
        questions:
            null == questions
                ? _value._questions
                : questions // ignore: cast_nullable_to_non_nullable
                    as List<QuestionModel>,
        currentIndex:
            null == currentIndex
                ? _value.currentIndex
                : currentIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        correctAnswers:
            null == correctAnswers
                ? _value.correctAnswers
                : correctAnswers // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$QuestionStateImpl implements _QuestionState {
  const _$QuestionStateImpl({
    this.status = QuestionStatus.initial,
    final List<QuestionModel> questions = const [],
    this.currentIndex = 0,
    this.correctAnswers = 0,
  }) : _questions = questions;

  @override
  @JsonKey()
  final QuestionStatus status;
  final List<QuestionModel> _questions;
  @override
  @JsonKey()
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int correctAnswers;

  @override
  String toString() {
    return 'QuestionState(status: $status, questions: $questions, currentIndex: $currentIndex, correctAnswers: $correctAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._questions,
              _questions,
            ) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_questions),
    currentIndex,
    correctAnswers,
  );

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  const factory _QuestionState({
    final QuestionStatus status,
    final List<QuestionModel> questions,
    final int currentIndex,
    final int correctAnswers,
  }) = _$QuestionStateImpl;

  @override
  QuestionStatus get status;
  @override
  List<QuestionModel> get questions;
  @override
  int get currentIndex;
  @override
  int get correctAnswers;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
