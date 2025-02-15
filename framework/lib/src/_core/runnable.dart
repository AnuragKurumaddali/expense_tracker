import 'dart:async' show FutureOr;

abstract class Runnable<T extends Object?> {
  FutureOr<T> run();
}
