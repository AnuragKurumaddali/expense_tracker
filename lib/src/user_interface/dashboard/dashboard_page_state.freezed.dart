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
  Task<void> get pageLoadTask => throw _privateConstructorUsedError;

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
      Task<void> pageLoadTask});

  $TaskCopyWith<void, $Res> get pageLoadTask;
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
    Object? pageLoadTask = null,
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
      pageLoadTask: null == pageLoadTask
          ? _value.pageLoadTask
          : pageLoadTask // ignore: cast_nullable_to_non_nullable
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
      Task<void> pageLoadTask});

  @override
  $TaskCopyWith<void, $Res> get pageLoadTask;
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
    Object? pageLoadTask = null,
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
      pageLoadTask: null == pageLoadTask
          ? _value.pageLoadTask
          : pageLoadTask // ignore: cast_nullable_to_non_nullable
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
      required this.pageLoadTask})
      : _lsExpenses = lsExpenses,
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
  final Task<void> pageLoadTask;

  @override
  String toString() {
    return 'DashboardPageState(stateId: $stateId, error: $error, lsExpenses: $lsExpenses, pageLoadTask: $pageLoadTask)';
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
            (identical(other.pageLoadTask, pageLoadTask) ||
                other.pageLoadTask == pageLoadTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateId, error,
      const DeepCollectionEquality().hash(_lsExpenses), pageLoadTask);

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
      required final Task<void> pageLoadTask}) = _$DashboardPageStateImpl;
  const _DashboardPageState._() : super._();

  @override
  StateId? get stateId;
  @override
  HandledException get error;
  @override
  List<Expense> get lsExpenses;
  @override
  Task<void> get pageLoadTask;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
