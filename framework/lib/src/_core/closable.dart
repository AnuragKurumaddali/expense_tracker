import 'dart:async' show FutureOr;

abstract class Closable<T extends Object?> {
  FutureOr<T> close();
}
