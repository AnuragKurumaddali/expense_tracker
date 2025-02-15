import 'dart:async' show FutureOr;

abstract class Startable<T extends Object?> {
  FutureOr<T> start();
}
