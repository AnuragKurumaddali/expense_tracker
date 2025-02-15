import 'dart:async' show FutureOr;

abstract class Disposable<T extends Object?> {
  FutureOr<T> dispose();
}
