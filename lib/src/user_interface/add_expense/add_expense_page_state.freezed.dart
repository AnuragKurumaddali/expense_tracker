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
  String get selectedCategory => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  List<String> get lsCategories => throw _privateConstructorUsedError;
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
      String selectedCategory,
      DateTime selectedDate,
      List<String> lsCategories,
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
    Object? selectedCategory = null,
    Object? selectedDate = null,
    Object? lsCategories = null,
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
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lsCategories: null == lsCategories
          ? _value.lsCategories
          : lsCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$AddExpensePageStateImplCopyWith<$Res>
    implements $AddExpensePageStateCopyWith<$Res> {
  factory _$$AddExpensePageStateImplCopyWith(_$AddExpensePageStateImpl value,
          $Res Function(_$AddExpensePageStateImpl) then) =
      __$$AddExpensePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateId? stateId,
      HandledException error,
      ExpenseData expenseData,
      String validationMessage,
      String selectedCategory,
      DateTime selectedDate,
      List<String> lsCategories,
      bool isFormValid,
      Task<void> addExpenseTask,
      Task<void> getCategoriesTask});

  @override
  $TaskCopyWith<void, $Res> get addExpenseTask;
  @override
  $TaskCopyWith<void, $Res> get getCategoriesTask;
}

/// @nodoc
class __$$AddExpensePageStateImplCopyWithImpl<$Res>
    extends _$AddExpensePageStateCopyWithImpl<$Res, _$AddExpensePageStateImpl>
    implements _$$AddExpensePageStateImplCopyWith<$Res> {
  __$$AddExpensePageStateImplCopyWithImpl(_$AddExpensePageStateImpl _value,
      $Res Function(_$AddExpensePageStateImpl) _then)
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
    Object? selectedCategory = null,
    Object? selectedDate = null,
    Object? lsCategories = null,
    Object? isFormValid = null,
    Object? addExpenseTask = null,
    Object? getCategoriesTask = null,
  }) {
    return _then(_$AddExpensePageStateImpl(
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
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lsCategories: null == lsCategories
          ? _value._lsCategories
          : lsCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$AddExpensePageStateImpl extends _AddExpensePageState {
  const _$AddExpensePageStateImpl(
      {this.stateId,
      required this.error,
      required this.expenseData,
      required this.validationMessage,
      required this.selectedCategory,
      required this.selectedDate,
      required final List<String> lsCategories,
      required this.isFormValid,
      required this.addExpenseTask,
      required this.getCategoriesTask})
      : _lsCategories = lsCategories,
        super._();

  @override
  final StateId? stateId;
  @override
  final HandledException error;
  @override
  final ExpenseData expenseData;
  @override
  final String validationMessage;
  @override
  final String selectedCategory;
  @override
  final DateTime selectedDate;
  final List<String> _lsCategories;
  @override
  List<String> get lsCategories {
    if (_lsCategories is EqualUnmodifiableListView) return _lsCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lsCategories);
  }

  @override
  final bool isFormValid;
  @override
  final Task<void> addExpenseTask;
  @override
  final Task<void> getCategoriesTask;

  @override
  String toString() {
    return 'AddExpensePageState(stateId: $stateId, error: $error, expenseData: $expenseData, validationMessage: $validationMessage, selectedCategory: $selectedCategory, selectedDate: $selectedDate, lsCategories: $lsCategories, isFormValid: $isFormValid, addExpenseTask: $addExpenseTask, getCategoriesTask: $getCategoriesTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpensePageStateImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.expenseData, expenseData) ||
                other.expenseData == expenseData) &&
            (identical(other.validationMessage, validationMessage) ||
                other.validationMessage == validationMessage) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality()
                .equals(other._lsCategories, _lsCategories) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.addExpenseTask, addExpenseTask) ||
                other.addExpenseTask == addExpenseTask) &&
            (identical(other.getCategoriesTask, getCategoriesTask) ||
                other.getCategoriesTask == getCategoriesTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateId,
      error,
      expenseData,
      validationMessage,
      selectedCategory,
      selectedDate,
      const DeepCollectionEquality().hash(_lsCategories),
      isFormValid,
      addExpenseTask,
      getCategoriesTask);

  /// Create a copy of AddExpensePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpensePageStateImplCopyWith<_$AddExpensePageStateImpl> get copyWith =>
      __$$AddExpensePageStateImplCopyWithImpl<_$AddExpensePageStateImpl>(
          this, _$identity);
}

abstract class _AddExpensePageState extends AddExpensePageState {
  const factory _AddExpensePageState(
      {final StateId? stateId,
      required final HandledException error,
      required final ExpenseData expenseData,
      required final String validationMessage,
      required final String selectedCategory,
      required final DateTime selectedDate,
      required final List<String> lsCategories,
      required final bool isFormValid,
      required final Task<void> addExpenseTask,
      required final Task<void> getCategoriesTask}) = _$AddExpensePageStateImpl;
  const _AddExpensePageState._() : super._();

  @override
  StateId? get stateId;
  @override
  HandledException get error;
  @override
  ExpenseData get expenseData;
  @override
  String get validationMessage;
  @override
  String get selectedCategory;
  @override
  DateTime get selectedDate;
  @override
  List<String> get lsCategories;
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
  _$$AddExpensePageStateImplCopyWith<_$AddExpensePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
