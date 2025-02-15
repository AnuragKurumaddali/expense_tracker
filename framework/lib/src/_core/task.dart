import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../error_handling/handled_exception.dart';
import '../event/ui_event.dart';
import 'cancel_token.dart';

part 'task.freezed.dart';

@freezed
class Task<T extends Object?> with _$Task implements UiEvent {
  const factory Task.idle() = Idle<T>;

  @Implements.fromString('CancelableTask<T>')
  const factory Task.running([CancelToken? cancelToken]) = Running<T>;

  @Implements.fromString('CancelableTask<T>')
  const factory Task.progressing(int progress, [CancelToken? cancelToken]) = Progressing<T>;

  @Implements.fromString('CancelableTask<T>')
  const factory Task.emitting(T value, [CancelToken? cancelToken]) = Emitting<T>;

  @Implements.fromString('CancelableTask<T>')
  const factory Task.done(T value) = Done<T>;

  const factory Task.failed(HandledException error) = Failed<T>;

  factory Task.failedFrom(Object error, HandledException defaultException) =>
      Task.failed(HandledException.from(error, defaultException));

  const factory Task.cancelled() = Cancelled<T>;

  @Implements.fromString('CancelableTask<T>')
  const factory Task.errorEmitting(T value, [CancelToken? cancelToken]) = ErrorEmitting<T>;
}

extension TaskExtensions<T extends Object?> on Task<T> {
  bool get isRunning => this is Running || this is Progressing || this is Emitting || this is ErrorEmitting;
  bool get isNotRunning => !isRunning;
  bool get isDone => this is Done;
  bool get isIdle => this is Idle;

  bool get isFailed => this is Failed;

  Task<U> mapDone<U extends Object?>(U Function(T value) mapper) {
    return maybeMap(
      done: (task) => Task.done(mapper(task.value as T)),
      orElse: () => this as Task<U>,
    );
  }

  Task<void> clearDone() {
    return maybeMap(
      done: (task) => const Task.done(null),
      orElse: () => this,
    );
  }

  Task<T> continueRunningOnDone() {
    return maybeMap(
      done: (task) => const Task.running(),
      orElse: () => this,
    );
  }

  Task<U> continueRunningOnDoneAndCast<U extends Object?>() {
    return maybeMap(
      done: (task) => const Task.running(),
      orElse: () => this as Task<U>,
    );
  }

  Task<T> continueRunningOnDoneAndDo(void Function(T value) onTaskDone) {
    return maybeMap(
      done: (task) {
        onTaskDone(task.value as T);
        return const Task.running();
      },
      orElse: () => this,
    );
  }

  Task<U> continueRunningOnDoneAndMap<U extends Object?>(U Function(T value) mapper) {
    return maybeMap(
      done: (task) {
        mapper(task.value as T);
        return const Task.running();
      },
      orElse: () => this as Task<U>,
    );
  }

  void cancel() {
    if (this is! CancelableTask) throw const TaskNotCancelableException();
    (this as CancelableTask).cancel();
  }

  void tryCancel() {
    if (this is! CancelableTask) return;
    (this as CancelableTask).tryCancel();
  }
}

class CancelableTaskException extends BasicException {
  const CancelableTaskException();
}

class TaskNotCancelableException extends CancelableTaskException {
  const TaskNotCancelableException();
}

class CancelTokenNotFoundException extends CancelableTaskException {
  const CancelTokenNotFoundException();
}

extension FutureExtensions<T extends Object?> on Future<T> {
  Future<U> doAndMap<U extends Object?>(void Function(T value) onDone, U Function(T value) mapper) {
    return then((value) {
      onDone(value);
      return mapper(value);
    });
  }

  Stream<Task<T>> asRunningTaskStream() {
    return then((value) => Task<T>.running()).asStream();
  }

  Stream<Task<U>> asRunningTaskStreamAndCast<U extends Object?>() {
    return then((value) => Task<U>.running()).asStream();
  }

  Stream<Task<void>> asRunningVoidTaskStream() {
    return then((value) => const Task<void>.running()).asStream();
  }

  Stream<Task<U>> asRunningTaskStreamAndDo<U extends Object?>(void Function(T value) onDone) {
    return doAndMap((value) => onDone(value), (value) => Task<U>.running()).asStream();
  }

  Stream<Task<U>> asRunningTaskStreamndMap<U extends Object?>(U Function(T value) mapper) {
    return then(mapper).then((value) => Task<U>.running()).asStream();
  }
}

extension StreamTaskExtensions<T extends Object?> on Stream<Task<T>> {
  Stream<Task<T>> doOnTaskDone(void Function(T value) onTaskDone) {
    return doOnData((task) => task is Done<T> ? onTaskDone(task.value) : null);
  }

  Stream<Task<U>> mapTaskDone<U extends Object?>(U Function(T value) mapper) {
    return map((task) => task.mapDone(mapper));
  }

  Stream<Task<void>> clearTaskDone() {
    return map((task) => task.clearDone());
  }

  Stream<Task<T>> continueRunningOnTaskDone() {
    return map((task) => task.continueRunningOnDone());
  }

  Stream<Task<U>> continueRunningOnTaskDoneAndCast<U extends Object?>() {
    return map((task) => task.continueRunningOnDoneAndCast<U>());
  }

  Stream<Task<void>> continueRunningOnTaskDoneAndCastToVoid() {
    return map((task) => task.continueRunningOnDoneAndCast<void>());
  }

  Stream<Task<T>> continueRunningOnTaskDoneAndDo(void Function(T value) onTaskDone) {
    return map((task) => task.continueRunningOnDoneAndDo(onTaskDone));
  }

  Stream<Task<U>> continueRunningOnTaskDoneAndMap<U extends Object?>(U Function(T value) mapper) {
    return map((task) => task.continueRunningOnDoneAndMap(mapper));
  }
}

abstract class CancelableTask<T extends Object?> implements Task<T> {
  CancelToken? get cancelToken;
}

extension CancelableTaskExtensions<T extends Object?> on CancelableTask<T> {
  void cancel() {
    if (cancelToken == null) throw const CancelTokenNotFoundException();
    cancelToken!.cancel();
  }

  void tryCancel() {
    if (cancelToken == null) return;
    cancelToken!.cancel();
  }
}
