// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardPageState {
  StateId? get stateId => throw _privateConstructorUsedError;
  HandledException get error => throw _privateConstructorUsedError;
  List<Expense> get lsExpenses => throw _privateConstructorUsedError;
  ExpenseData get expenseData => throw _privateConstructorUsedError;
  String get validationMessage => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  List<String> get lsCategories => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;
  Task<void> get pageLoadTask => throw _privateConstructorUsedError;
  Task<void> get addExpenseTask => throw _privateConstructorUsedError;
  Task<void> get getCategoriesTask => throw _privateConstructorUsedError;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardPageStateCopyWith<DashboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPageStateCopyWith<$Res> {
  factory $DashboardPageStateCopyWith(
          DashboardPageState value, $Res Function(DashboardPageState) then) =
      _$DashboardPageStateCopyWithImpl<$Res, DashboardPageState>;
  @useResult
  $Res call(
      {StateId? stateId,
      HandledException error,
      List<Expense> lsExpenses,
      ExpenseData expenseData,
      String validationMessage,
      String selectedCategory,
      DateTime selectedDate,
      List<String> lsCategories,
      bool isFormValid,
      Task<void> pageLoadTask,
      Task<void> addExpenseTask,
      Task<void> getCategoriesTask});

  $TaskCopyWith<void, $Res> get pageLoadTask;
  $TaskCopyWith<void, $Res> get addExpenseTask;
  $TaskCopyWith<void, $Res> get getCategoriesTask;
}

/// @nodoc
class _$DashboardPageStateCopyWithImpl<$Res, $Val extends DashboardPageState>
    implements $DashboardPageStateCopyWith<$Res> {
  _$DashboardPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? error = null,
    Object? lsExpenses = null,
    Object? expenseData = null,
    Object? validationMessage = null,
    Object? selectedCategory = null,
    Object? selectedDate = null,
    Object? lsCategories = null,
    Object? isFormValid = null,
    Object? pageLoadTask = null,
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
      lsExpenses: null == lsExpenses
          ? _value.lsExpenses
          : lsExpenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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
      pageLoadTask: null == pageLoadTask
          ? _value.pageLoadTask
          : pageLoadTask // ignore: cast_nullable_to_non_nullable
              as Task<void>,
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

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<void, $Res> get pageLoadTask {
    return $TaskCopyWith<void, $Res>(_value.pageLoadTask, (value) {
      return _then(_value.copyWith(pageLoadTask: value) as $Val);
    });
  }

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<void, $Res> get addExpenseTask {
    return $TaskCopyWith<void, $Res>(_value.addExpenseTask, (value) {
      return _then(_value.copyWith(addExpenseTask: value) as $Val);
    });
  }

  /// Create a copy of DashboardPageState
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
abstract class _$$DashboardPageStateImplCopyWith<$Res>
    implements $DashboardPageStateCopyWith<$Res> {
  factory _$$DashboardPageStateImplCopyWith(_$DashboardPageStateImpl value,
          $Res Function(_$DashboardPageStateImpl) then) =
      __$$DashboardPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateId? stateId,
      HandledException error,
      List<Expense> lsExpenses,
      ExpenseData expenseData,
      String validationMessage,
      String selectedCategory,
      DateTime selectedDate,
      List<String> lsCategories,
      bool isFormValid,
      Task<void> pageLoadTask,
      Task<void> addExpenseTask,
      Task<void> getCategoriesTask});

  @override
  $TaskCopyWith<void, $Res> get pageLoadTask;
  @override
  $TaskCopyWith<void, $Res> get addExpenseTask;
  @override
  $TaskCopyWith<void, $Res> get getCategoriesTask;
}

/// @nodoc
class __$$DashboardPageStateImplCopyWithImpl<$Res>
    extends _$DashboardPageStateCopyWithImpl<$Res, _$DashboardPageStateImpl>
    implements _$$DashboardPageStateImplCopyWith<$Res> {
  __$$DashboardPageStateImplCopyWithImpl(_$DashboardPageStateImpl _value,
      $Res Function(_$DashboardPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateId = freezed,
    Object? error = null,
    Object? lsExpenses = null,
    Object? expenseData = null,
    Object? validationMessage = null,
    Object? selectedCategory = null,
    Object? selectedDate = null,
    Object? lsCategories = null,
    Object? isFormValid = null,
    Object? pageLoadTask = null,
    Object? addExpenseTask = null,
    Object? getCategoriesTask = null,
  }) {
    return _then(_$DashboardPageStateImpl(
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as StateId?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HandledException,
      lsExpenses: null == lsExpenses
          ? _value._lsExpenses
          : lsExpenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
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
      pageLoadTask: null == pageLoadTask
          ? _value.pageLoadTask
          : pageLoadTask // ignore: cast_nullable_to_non_nullable
              as Task<void>,
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

class _$DashboardPageStateImpl extends _DashboardPageState {
  const _$DashboardPageStateImpl(
      {this.stateId,
      required this.error,
      required final List<Expense> lsExpenses,
      required this.expenseData,
      required this.validationMessage,
      required this.selectedCategory,
      required this.selectedDate,
      required final List<String> lsCategories,
      required this.isFormValid,
      required this.pageLoadTask,
      required this.addExpenseTask,
      required this.getCategoriesTask})
      : _lsExpenses = lsExpenses,
        _lsCategories = lsCategories,
        super._();

  @override
  final StateId? stateId;
  @override
  final HandledException error;
  final List<Expense> _lsExpenses;
  @override
  List<Expense> get lsExpenses {
    if (_lsExpenses is EqualUnmodifiableListView) return _lsExpenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lsExpenses);
  }

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
  final Task<void> pageLoadTask;
  @override
  final Task<void> addExpenseTask;
  @override
  final Task<void> getCategoriesTask;

  @override
  String toString() {
    return 'DashboardPageState(stateId: $stateId, error: $error, lsExpenses: $lsExpenses, expenseData: $expenseData, validationMessage: $validationMessage, selectedCategory: $selectedCategory, selectedDate: $selectedDate, lsCategories: $lsCategories, isFormValid: $isFormValid, pageLoadTask: $pageLoadTask, addExpenseTask: $addExpenseTask, getCategoriesTask: $getCategoriesTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardPageStateImpl &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._lsExpenses, _lsExpenses) &&
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
            (identical(other.pageLoadTask, pageLoadTask) ||
                other.pageLoadTask == pageLoadTask) &&
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
      const DeepCollectionEquality().hash(_lsExpenses),
      expenseData,
      validationMessage,
      selectedCategory,
      selectedDate,
      const DeepCollectionEquality().hash(_lsCategories),
      isFormValid,
      pageLoadTask,
      addExpenseTask,
      getCategoriesTask);

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      __$$DashboardPageStateImplCopyWithImpl<_$DashboardPageStateImpl>(
          this, _$identity);
}

abstract class _DashboardPageState extends DashboardPageState {
  const factory _DashboardPageState(
      {final StateId? stateId,
      required final HandledException error,
      required final List<Expense> lsExpenses,
      required final ExpenseData expenseData,
      required final String validationMessage,
      required final String selectedCategory,
      required final DateTime selectedDate,
      required final List<String> lsCategories,
      required final bool isFormValid,
      required final Task<void> pageLoadTask,
      required final Task<void> addExpenseTask,
      required final Task<void> getCategoriesTask}) = _$DashboardPageStateImpl;
  const _DashboardPageState._() : super._();

  @override
  StateId? get stateId;
  @override
  HandledException get error;
  @override
  List<Expense> get lsExpenses;
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
  Task<void> get pageLoadTask;
  @override
  Task<void> get addExpenseTask;
  @override
  Task<void> get getCategoriesTask;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
