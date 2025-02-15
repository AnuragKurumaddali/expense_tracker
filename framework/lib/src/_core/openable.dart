import 'dart:async' show FutureOr;

abstract class Openable<T extends Object?> {
  FutureOr<T> open();
}
