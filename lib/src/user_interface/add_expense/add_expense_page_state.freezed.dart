// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddExpensePageState {
  StateId? get stateId => throw _privateConstructorUsedError;
  HandledException get error => throw _privateConstructorUsedError;
  ExpenseData get expenseData => throw _privateConstructorUsedError;
  String get validationMessage => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  Task<void> get addExpenseTask => throw _privateConstructorUsedError;
  Task<void> get getCategoriesTask => throw _privateConstructorUsedError;

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddExpensePageStateCopyWith<AddExpensePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpensePageStateCopyWith<$Res> {
  factory $AddExpensePageStateCopyWith(
          AddExpensePageState value, $Res Function(AddExpensePageState) then) =
      _$AddExpensePageStateCopyWithImpl<$Res, AddExpensePageState>;
  @useResult
  $Res call(
      {StateId? stateId,
      HandledException error,
      ExpenseData expenseData,
      String validationMessage,
      bool isFormValid,
      Task<void> addExpenseTask,
      Task<void> getCategoriesTask});

  $TaskCopyWith<void, $Res> get addExpenseTask;
  $TaskCopyWith<void, $Res> get getCategoriesTask;
}

/// @nodoc
class _$AddExpensePageStateCopyWithImpl<$Res, $Val extends AddExpensePageState>
    implements $AddExpensePageStateCopyWith<$Res> {
  _$AddExpensePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? error = null,
    Object? expenseData = null,
    Object? validationMessage = null,
    Object? isFormValid = null,
    Object? addExpenseTask = null,
    Object? getCategoriesTask = null,
  }) {
    return _then(_value.copyWith(
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as StateId?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HandledException,
      expenseData: null == expenseData
          ? _value.expenseData
          : expenseData // ignore: cast_nullable_to_non_nullable
              as ExpenseData,
      validationMessage: null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      addExpenseTask: null == addExpenseTask
          ? _value.addExpenseTask
          : addExpenseTask // ignore: cast_nullable_to_non_nullable
              as Task<void>,
      getCategoriesTask: null == getCategoriesTask
          ? _value.getCategoriesTask
          : getCategoriesTask // ignore: cast_nullable_to_non_nullable
              as Task<void>,
    ) as $Val);
  }

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<void, $Res> get addExpenseTask {
    return $TaskCopyWith<void, $Res>(_value.addExpenseTask, (value) {
      return _then(_value.copyWith(addExpenseTask: value) as $Val);
    });
  }

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<void, $Res> get getCategoriesTask {
    return $TaskCopyWith<void, $Res>(_value.getCategoriesTask, (value) {
      return _then(_value.copyWith(getCategoriesTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddExpenseStateImplCopyWith<$Res>
    implements $AddExpensePageStateCopyWith<$Res> {
  factory _$$AddExpenseStateImplCopyWith(_$AddExpenseStateImpl value,
          $Res Function(_$AddExpenseStateImpl) then) =
      __$$AddExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateId? stateId,
      HandledException error,
      ExpenseData expenseData,
      String validationMessage,
      bool isFormValid,
      Task<void> addExpenseTask,
      Task<void> getCategoriesTask});

  @override
  $TaskCopyWith<void, $Res> get addExpenseTask;
  @override
  $TaskCopyWith<void, $Res> get getCategoriesTask;
}

/// @nodoc
class __$$AddExpenseStateImplCopyWithImpl<$Res>
    extends _$AddExpensePageStateCopyWithImpl<$Res, _$AddExpenseStateImpl>
    implements _$$AddExpenseStateImplCopyWith<$Res> {
  __$$AddExpenseStateImplCopyWithImpl(
      _$AddExpenseStateImpl _value, $Res Function(_$AddExpenseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? error = null,
    Object? expenseData = null,
    Object? validationMessage = null,
    Object? isFormValid = null,
    Object? addExpenseTask = null,
    Object? getCategoriesTask = null,
  }) {
    return _then(_$AddExpenseStateImpl(
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as StateId?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HandledException,
      expenseData: null == expenseData
          ? _value.expenseData
          : expenseData // ignore: cast_nullable_to_non_nullable
              as ExpenseData,
      validationMessage: null == validationMessage
          ? _value.validationMessage
          : validationMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
      addExpenseTask: null == addExpenseTask
          ? _value.addExpenseTask
          : addExpenseTask // ignore: cast_nullable_to_non_nullable
              as Task<void>,
      getCategoriesTask: null == getCategoriesTask
          ? _value.getCategoriesTask
          : getCategoriesTask // ignore: cast_nullable_to_non_nullable
              as Task<void>,
    ));
  }
}

/// @nodoc

class _$AddExpenseStateImpl extends _AddExpenseState {
  const _$AddExpenseStateImpl(
      {this.stateId,
      required this.error,
      required this.expenseData,
      required this.validationMessage,
      required this.isFormValid,
      required this.addExpenseTask,
      required this.getCategoriesTask})
      : super._();

  @override
  final StateId? stateId;
  @override
  final HandledException error;
  @override
  final ExpenseData expenseData;
  @override
  final String validationMessage;
  @override
  final bool isFormValid;
  @override
  final Task<void> addExpenseTask;
  @override
  final Task<void> getCategoriesTask;

  @override
  String toString() {
    return 'AddExpensePageState(stateId: $stateId, error: $error, expenseData: $expenseData, validationMessage: $validationMessage, isFormValid: $isFormValid, addExpenseTask: $addExpenseTask, getCategoriesTask: $getCategoriesTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseStateImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.expenseData, expenseData) ||
                other.expenseData == expenseData) &&
            (identical(other.validationMessage, validationMessage) ||
                other.validationMessage == validationMessage) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.addExpenseTask, addExpenseTask) ||
                other.addExpenseTask == addExpenseTask) &&
            (identical(other.getCategoriesTask, getCategoriesTask) ||
                other.getCategoriesTask == getCategoriesTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateId, error, expenseData,
      validationMessage, isFormValid, addExpenseTask, getCategoriesTask);

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseStateImplCopyWith<_$AddExpenseStateImpl> get copyWith =>
      __$$AddExpenseStateImplCopyWithImpl<_$AddExpenseStateImpl>(
          this, _$identity);
}

abstract class _AddExpenseState extends AddExpensePageState {
  const factory _AddExpenseState(
      {final StateId? stateId,
      required final HandledException error,
      required final ExpenseData expenseData,
      required final String validationMessage,
      required final bool isFormValid,
      required final Task<void> addExpenseTask,
      required final Task<void> getCategoriesTask}) = _$AddExpenseStateImpl;
  const _AddExpenseState._() : super._();

  @override
  StateId? get stateId;
  @override
  HandledException get error;
  @override
  ExpenseData get expenseData;
  @override
  String get validationMessage;
  @override
  bool get isFormValid;
  @override
  Task<void> get addExpenseTask;
  @override
  Task<void> get getCategoriesTask;

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddExpenseStateImplCopyWith<_$AddExpenseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
