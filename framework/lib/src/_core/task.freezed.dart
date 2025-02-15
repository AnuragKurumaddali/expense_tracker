// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Task<T extends Object?> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<T extends Object?, $Res> {
  factory $TaskCopyWith(Task<T> value, $Res Function(Task<T>) then) = _$TaskCopyWithImpl<T, $Res, Task<T>>;
}

/// @nodoc
class _$TaskCopyWithImpl<T extends Object?, $Res, $Val extends Task<T>> implements $TaskCopyWith<T, $Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<T extends Object?, $Res> {
  factory _$$IdleImplCopyWith(_$IdleImpl<T> value, $Res Function(_$IdleImpl<T>) then) =
      __$$IdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then) : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl<T extends Object?> implements Idle<T> {
  const _$IdleImpl();

  @override
  String toString() {
    return 'Task<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$IdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T extends Object?> implements Task<T> {
  const factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$RunningImplCopyWith<T extends Object?, $Res> {
  factory _$$RunningImplCopyWith(_$RunningImpl<T> value, $Res Function(_$RunningImpl<T>) then) =
      __$$RunningImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CancelToken? cancelToken});
}

/// @nodoc
class __$$RunningImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$RunningImpl<T>>
    implements _$$RunningImplCopyWith<T, $Res> {
  __$$RunningImplCopyWithImpl(_$RunningImpl<T> _value, $Res Function(_$RunningImpl<T>) _then) : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelToken = freezed,
  }) {
    return _then(_$RunningImpl<T>(
      freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$RunningImpl<T extends Object?> implements Running<T> {
  const _$RunningImpl([this.cancelToken]);

  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'Task<$T>.running(cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RunningImpl<T> &&
            (identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cancelToken);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RunningImplCopyWith<T, _$RunningImpl<T>> get copyWith =>
      __$$RunningImplCopyWithImpl<T, _$RunningImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return running(cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return running?.call(cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(cancelToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class Running<T extends Object?> implements Task<T>, CancelableTask<T> {
  const factory Running([final CancelToken? cancelToken]) = _$RunningImpl<T>;

  CancelToken? get cancelToken;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RunningImplCopyWith<T, _$RunningImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressingImplCopyWith<T extends Object?, $Res> {
  factory _$$ProgressingImplCopyWith(_$ProgressingImpl<T> value, $Res Function(_$ProgressingImpl<T>) then) =
      __$$ProgressingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int progress, CancelToken? cancelToken});
}

/// @nodoc
class __$$ProgressingImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$ProgressingImpl<T>>
    implements _$$ProgressingImplCopyWith<T, $Res> {
  __$$ProgressingImplCopyWithImpl(_$ProgressingImpl<T> _value, $Res Function(_$ProgressingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_$ProgressingImpl<T>(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$ProgressingImpl<T extends Object?> implements Progressing<T> {
  const _$ProgressingImpl(this.progress, [this.cancelToken]);

  @override
  final int progress;
  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'Task<$T>.progressing(progress: $progress, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressingImpl<T> &&
            (identical(other.progress, progress) || other.progress == progress) &&
            (identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, cancelToken);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressingImplCopyWith<T, _$ProgressingImpl<T>> get copyWith =>
      __$$ProgressingImplCopyWithImpl<T, _$ProgressingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return progressing(progress, cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return progressing?.call(progress, cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (progressing != null) {
      return progressing(progress, cancelToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return progressing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return progressing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (progressing != null) {
      return progressing(this);
    }
    return orElse();
  }
}

abstract class Progressing<T extends Object?> implements Task<T>, CancelableTask<T> {
  const factory Progressing(final int progress, [final CancelToken? cancelToken]) = _$ProgressingImpl<T>;

  int get progress;
  CancelToken? get cancelToken;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressingImplCopyWith<T, _$ProgressingImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmittingImplCopyWith<T extends Object?, $Res> {
  factory _$$EmittingImplCopyWith(_$EmittingImpl<T> value, $Res Function(_$EmittingImpl<T>) then) =
      __$$EmittingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value, CancelToken? cancelToken});
}

/// @nodoc
class __$$EmittingImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$EmittingImpl<T>>
    implements _$$EmittingImplCopyWith<T, $Res> {
  __$$EmittingImplCopyWithImpl(_$EmittingImpl<T> _value, $Res Function(_$EmittingImpl<T>) _then) : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? cancelToken = freezed,
  }) {
    return _then(_$EmittingImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$EmittingImpl<T extends Object?> implements Emitting<T> {
  const _$EmittingImpl(this.value, [this.cancelToken]);

  @override
  final T value;
  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'Task<$T>.emitting(value: $value, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmittingImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value), cancelToken);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmittingImplCopyWith<T, _$EmittingImpl<T>> get copyWith =>
      __$$EmittingImplCopyWithImpl<T, _$EmittingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return emitting(value, cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return emitting?.call(value, cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (emitting != null) {
      return emitting(value, cancelToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return emitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return emitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (emitting != null) {
      return emitting(this);
    }
    return orElse();
  }
}

abstract class Emitting<T extends Object?> implements Task<T>, CancelableTask<T> {
  const factory Emitting(final T value, [final CancelToken? cancelToken]) = _$EmittingImpl<T>;

  T get value;
  CancelToken? get cancelToken;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmittingImplCopyWith<T, _$EmittingImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneImplCopyWith<T extends Object?, $Res> {
  factory _$$DoneImplCopyWith(_$DoneImpl<T> value, $Res Function(_$DoneImpl<T>) then) =
      __$$DoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$DoneImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$DoneImpl<T>>
    implements _$$DoneImplCopyWith<T, $Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl<T> _value, $Res Function(_$DoneImpl<T>) _then) : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$DoneImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DoneImpl<T extends Object?> implements Done<T> {
  const _$DoneImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'Task<$T>.done(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneImplCopyWith<T, _$DoneImpl<T>> get copyWith => __$$DoneImplCopyWithImpl<T, _$DoneImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return done(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return done?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }

  @override
  CancelToken? get cancelToken => null;
}

abstract class Done<T extends Object?> implements Task<T>, CancelableTask<T> {
  const factory Done(final T value) = _$DoneImpl<T>;

  T get value;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoneImplCopyWith<T, _$DoneImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<T extends Object?, $Res> {
  factory _$$FailedImplCopyWith(_$FailedImpl<T> value, $Res Function(_$FailedImpl<T>) then) =
      __$$FailedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({HandledException error});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$FailedImpl<T>>
    implements _$$FailedImplCopyWith<T, $Res> {
  __$$FailedImplCopyWithImpl(_$FailedImpl<T> _value, $Res Function(_$FailedImpl<T>) _then) : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailedImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HandledException,
    ));
  }
}

/// @nodoc

class _$FailedImpl<T extends Object?> implements Failed<T> {
  const _$FailedImpl(this.error);

  @override
  final HandledException error;

  @override
  String toString() {
    return 'Task<$T>.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      __$$FailedImplCopyWithImpl<T, _$FailedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<T extends Object?> implements Task<T> {
  const factory Failed(final HandledException error) = _$FailedImpl<T>;

  HandledException get error;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<T extends Object?, $Res> {
  factory _$$CancelledImplCopyWith(_$CancelledImpl<T> value, $Res Function(_$CancelledImpl<T>) then) =
      __$$CancelledImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<T extends Object?, $Res> extends _$TaskCopyWithImpl<T, $Res, _$CancelledImpl<T>>
    implements _$$CancelledImplCopyWith<T, $Res> {
  __$$CancelledImplCopyWithImpl(_$CancelledImpl<T> _value, $Res Function(_$CancelledImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelledImpl<T extends Object?> implements Cancelled<T> {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'Task<$T>.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CancelledImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled<T extends Object?> implements Task<T> {
  const factory Cancelled() = _$CancelledImpl<T>;
}

/// @nodoc
abstract class _$$ErrorEmittingImplCopyWith<T extends Object?, $Res> {
  factory _$$ErrorEmittingImplCopyWith(_$ErrorEmittingImpl<T> value, $Res Function(_$ErrorEmittingImpl<T>) then) =
      __$$ErrorEmittingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value, CancelToken? cancelToken});
}

/// @nodoc
class __$$ErrorEmittingImplCopyWithImpl<T extends Object?, $Res>
    extends _$TaskCopyWithImpl<T, $Res, _$ErrorEmittingImpl<T>> implements _$$ErrorEmittingImplCopyWith<T, $Res> {
  __$$ErrorEmittingImplCopyWithImpl(_$ErrorEmittingImpl<T> _value, $Res Function(_$ErrorEmittingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? cancelToken = freezed,
  }) {
    return _then(_$ErrorEmittingImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$ErrorEmittingImpl<T extends Object?> implements ErrorEmitting<T> {
  const _$ErrorEmittingImpl(this.value, [this.cancelToken]);

  @override
  final T value;
  @override
  final CancelToken? cancelToken;

  @override
  String toString() {
    return 'Task<$T>.errorEmitting(value: $value, cancelToken: $cancelToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorEmittingImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value), cancelToken);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorEmittingImplCopyWith<T, _$ErrorEmittingImpl<T>> get copyWith =>
      __$$ErrorEmittingImplCopyWithImpl<T, _$ErrorEmittingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(CancelToken? cancelToken) running,
    required TResult Function(int progress, CancelToken? cancelToken) progressing,
    required TResult Function(T value, CancelToken? cancelToken) emitting,
    required TResult Function(T value) done,
    required TResult Function(HandledException error) failed,
    required TResult Function() cancelled,
    required TResult Function(T value, CancelToken? cancelToken) errorEmitting,
  }) {
    return errorEmitting(value, cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(CancelToken? cancelToken)? running,
    TResult? Function(int progress, CancelToken? cancelToken)? progressing,
    TResult? Function(T value, CancelToken? cancelToken)? emitting,
    TResult? Function(T value)? done,
    TResult? Function(HandledException error)? failed,
    TResult? Function()? cancelled,
    TResult? Function(T value, CancelToken? cancelToken)? errorEmitting,
  }) {
    return errorEmitting?.call(value, cancelToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(CancelToken? cancelToken)? running,
    TResult Function(int progress, CancelToken? cancelToken)? progressing,
    TResult Function(T value, CancelToken? cancelToken)? emitting,
    TResult Function(T value)? done,
    TResult Function(HandledException error)? failed,
    TResult Function()? cancelled,
    TResult Function(T value, CancelToken? cancelToken)? errorEmitting,
    required TResult orElse(),
  }) {
    if (errorEmitting != null) {
      return errorEmitting(value, cancelToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Running<T> value) running,
    required TResult Function(Progressing<T> value) progressing,
    required TResult Function(Emitting<T> value) emitting,
    required TResult Function(Done<T> value) done,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(Cancelled<T> value) cancelled,
    required TResult Function(ErrorEmitting<T> value) errorEmitting,
  }) {
    return errorEmitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Running<T> value)? running,
    TResult? Function(Progressing<T> value)? progressing,
    TResult? Function(Emitting<T> value)? emitting,
    TResult? Function(Done<T> value)? done,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(Cancelled<T> value)? cancelled,
    TResult? Function(ErrorEmitting<T> value)? errorEmitting,
  }) {
    return errorEmitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Running<T> value)? running,
    TResult Function(Progressing<T> value)? progressing,
    TResult Function(Emitting<T> value)? emitting,
    TResult Function(Done<T> value)? done,
    TResult Function(Failed<T> value)? failed,
    TResult Function(Cancelled<T> value)? cancelled,
    TResult Function(ErrorEmitting<T> value)? errorEmitting,
    required TResult orElse(),
  }) {
    if (errorEmitting != null) {
      return errorEmitting(this);
    }
    return orElse();
  }
}

abstract class ErrorEmitting<T extends Object?> implements Task<T> {
  const factory ErrorEmitting(final T value, [final CancelToken? cancelToken]) = _$ErrorEmittingImpl<T>;

  T get value;
  CancelToken? get cancelToken;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorEmittingImplCopyWith<T, _$ErrorEmittingImpl<T>> get copyWith => throw _privateConstructorUsedError;
}
