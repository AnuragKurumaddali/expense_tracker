import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

typedef Lazy<T> = T Function();

/// Represents a value of one of two possible types.
/// Instances of [Result] are result an instance of [Ok] or [Err].
///
/// This class has been ported from https://pub.dev/packages/either_dart by swapping and renaming the generic types.
///
/// [Ok] is used for "success".
/// [Err] is used for "failure".
sealed class Result<O, E> {
  const Result();

  /// Represents the ok side of [Result] class which by convention is a "Success"
  bool get isOk => this is Ok<O, E>;

  /// Represents the err side of [Result] class which by convention is a "Failure".
  bool get isErr => this is Err<O, E>;

  /// Get [Ok] value, may throw an exception when the value is [Err]
  O get okUnsafe =>
      this.fold<O>((ok) => ok, (err) => throw Exception('Illegal use. You should check isOk before calling'));

  /// Get [Err] value, may throw an exception when the value is [Ok]
  E get errUnsafe =>
      this.fold<E>((ok) => throw Exception('Illegal use. You should check isErr before calling'), (err) => err);

  /// Transform values of [Err] and [Ok]
  Result<TO, TE> result<TO, TE>(TO Function(O ok) fnO, TE Function(E err) fnE);

  /// Transform value of [Ok] when transformation may be finished with an error
  Result<TO, E> then<TO>(Result<TO, E> Function(O ok) fnO);

  /// Transform value of [Ok] when transformation may be finished with an error
  Future<Result<TO, E>> thenAsync<TO>(FutureOr<Result<TO, E>> Function(O ok) fnO);

  /// Transform value of [Err] when transformation may be finished with an [Ok]
  Result<O, TE> thenErr<TE>(Result<O, TE> Function(E err) fnE);

  /// Transform value of [Err] when transformation may be finished with an [Ok]
  Future<Result<O, TE>> thenErrAsync<TE>(FutureOr<Result<O, TE>> Function(E err) fnE);

  /// Transform value of [Ok]
  Result<TO, E> map<TO>(TO Function(O ok) fnO);

  /// Transform value of [Err]
  Result<O, TE> mapErr<TE>(TE Function(E err) fnE);

  /// Transform value of [Ok]
  Future<Result<TO, E>> mapAsync<TO>(FutureOr<TO> Function(O ok) fnO);

  /// Transform value of [Err]
  Future<Result<O, TE>> mapErrAsync<TE>(FutureOr<TE> Function(E err) fnE);

  /// Fold [Ok] and [Err] into the value of one type
  T fold<T>(T Function(O ok) fnO, T Function(E err) fnE);

  /// Swap [Ok] and [Err]
  Result<E, O> swap() => fold((ok) => Err(ok), (err) => Ok(err));

  /// Constructs a new [Result] from a function that might throw
  static Result<O, E> tryCatch<O, E, Ex extends Object>(O Function() fnO, E Function(Ex err) onError) {
    try {
      return Ok(fnO());
    } on Ex catch (e) {
      return Err(onError(e));
    }
  }

  /// Constructs a new [Result] from a function that might throw
  ///
  /// simplified version of [Result.tryCatch]
  ///
  /// ```dart
  /// final fileOrError = Result.tryExcept<FileError>(() => /* maybe throw */);
  /// ```
  static Result<O, Ex> tryExcept<Ex extends Object, O>(O Function() fnO) {
    try {
      return Ok(fnO());
    } on Ex catch (e) {
      return Err(e);
    }
  }

  /// If the condition is true then return [okValue] in [Ok] else [errValue] in [Err]
  static Result<O, E> cond<O, E>(bool test, O okValue, E errValue) => test ? Ok(okValue) : Err(errValue);

  /// If the condition is true then return [okValue] in [Ok] else [errValue] in [Err]
  static Result<O, E> condLazy<O, E>(bool test, Lazy<O> okValue, Lazy<E> errValue) =>
      test ? Ok(okValue()) : Err(errValue());

  @override
  bool operator ==(Object other) {
    return this.fold(
      (err) => other is Err && err == other.err,
      (ok) => other is Ok && ok == other.ok,
    );
  }

  @override
  int get hashCode => fold((err) => err.hashCode, (ok) => ok.hashCode);
}

/// Used for "success"
class Ok<O, E> extends Result<O, E> {
  final O ok;

  const Ok(this.ok);

  @override
  Result<TO, TE> result<TO, TE>(TO Function(O ok) fnO, TE Function(E err) fnE) {
    return Ok<TO, TE>(fnO(ok));
  }

  @override
  Result<TO, E> then<TO>(Result<TO, E> Function(O ok) fnO) {
    return fnO(ok);
  }

  @override
  Future<Result<TO, E>> thenAsync<TO>(FutureOr<Result<TO, E>> Function(O ok) fnO) {
    return Future.value(fnO(ok));
  }

  @override
  Result<O, TE> thenErr<TE>(Result<O, TE> Function(E err) fnE) {
    return Ok<O, TE>(ok);
  }

  @override
  Future<Result<O, TE>> thenErrAsync<TE>(FutureOr<Result<O, TE>> Function(E err) fnE) {
    return Future.value(Ok<O, TE>(ok));
  }

  @override
  Result<TO, E> map<TO>(TO Function(O ok) fnO) {
    return Ok<TO, E>(fnO(ok));
  }

  @override
  Result<O, TE> mapErr<TE>(TE Function(E err) fnE) {
    return Ok<O, TE>(ok);
  }

  @override
  Future<Result<TO, E>> mapAsync<TO>(FutureOr<TO> Function(O ok) fnO) {
    return Future.value(fnO(ok)).then((value) => Ok<TO, E>(value));
  }

  @override
  Future<Result<O, TE>> mapErrAsync<TE>(FutureOr<TE> Function(E err) fnE) {
    return Future.value(Ok<O, TE>(ok));
  }

  @override
  T fold<T>(T Function(O ok) fnO, T Function(E err) fnE) {
    return fnO(ok);
  }
}

/// Used for "failure"
class Err<O, E> extends Result<O, E> {
  final E err;

  const Err(this.err);

  @override
  Result<TO, TE> result<TO, TE>(TO Function(O ok) fnO, TE Function(E err) fnE) {
    return Err<TO, TE>(fnE(err));
  }

  @override
  Result<TO, E> then<TO>(Result<TO, E> Function(O ok) fnO) {
    return Err<TO, E>(err);
  }

  @override
  Future<Result<TO, E>> thenAsync<TO>(FutureOr<Result<TO, E>> Function(O ok) fnO) {
    return Future.value(Err<TO, E>(err));
  }

  @override
  Result<O, TE> thenErr<TE>(Result<O, TE> Function(E err) fnE) {
    return fnE(err);
  }

  @override
  Future<Result<O, TE>> thenErrAsync<TE>(FutureOr<Result<O, TE>> Function(E err) fnE) {
    return Future.value(fnE(err));
  }

  @override
  Result<TO, E> map<TO>(TO Function(O ok) fnO) {
    return Err<TO, E>(err);
  }

  @override
  Result<O, TE> mapErr<TE>(TE Function(E err) fnE) {
    return Err<O, TE>(fnE(err));
  }

  @override
  Future<Result<TO, E>> mapAsync<TO>(FutureOr<TO> Function(O ok) fnO) {
    return Future.value(Err<TO, E>(err));
  }

  @override
  Future<Result<O, TE>> mapErrAsync<TE>(FutureOr<TE> Function(E err) fnE) {
    return Future.value(fnE(err)).then((value) => Err<O, TE>(value));
  }

  @override
  T fold<T>(T Function(O ok) fnO, T Function(E err) fnE) {
    return fnE(err);
  }
}

extension FutureResult<O, E> on Future<Result<O, E>> {
  /// Represents the ok side of [Result] class which by convention is a "Success"
  Future<bool> get isOk => then((result) => result.isOk);

  /// Represents the err side of [Future] class which by convention is a "Failure".
  Future<bool> get isErr => then((result) => result.isErr);

  /// Transform values of [Ok] and [Err]
  Future<Result<TO, TE>> result<TO, TE>(TO Function(O ok) fnO, TE Function(E err) fnE) =>
      then((result) => result.result(fnO, fnE));

  /// Transform value of [Ok]
  Future<Result<TO, E>> mapOk<TO>(FutureOr<TO> Function(O ok) fnO) => then((result) => result.mapAsync(fnO));

  /// Transform value of [Err]
  Future<Result<O, TE>> mapErr<TE>(FutureOr<TE> Function(E err) fnE) => then((result) => result.mapErrAsync(fnE));

  /// Async transform value of [Ok] when transformation may be finished with an [Err]
  Future<Result<TO, E>> thenOk<TO>(FutureOr<Result<TO, E>> Function(O ok) fnO) =>
      then((result) => result.thenAsync(fnO));

  /// Async transform value of [Err] when transformation may be finished with an [Ok]
  Future<Result<O, TE>> thenErr<TE>(FutureOr<Result<O, TE>> Function(E err) fnE) =>
      then((result) => result.thenErrAsync(fnE));

  /// Fold [Ok] and [Err] into the value of one type
  Future<T> fold<T>(
    FutureOr<T> Function(O ok) fnO,
    FutureOr<T> Function(E err) fnE,
  ) {
    return then((result) => result.fold(fnO, fnE));
  }

  /// Swap [Ok] and [Err]
  Future<Result<E, O>> swap() => this.fold<Result<E, O>>((ok) => Err(ok), (err) => Ok(err));
}

/// Used instead of `void` as a return statement for a function when no value is to be returned.
/// There is only one value of type [Unit]
@sealed
class Unit {
  const Unit._();
}

/// Used instead of `void` as a return statement for a function when no value is to be returned.
const unit = Unit._();
