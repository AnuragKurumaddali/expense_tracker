import 'dart:async' show FutureOr;

abstract class Stoppable<T extends Object?> {
  FutureOr<T> stop();
}
