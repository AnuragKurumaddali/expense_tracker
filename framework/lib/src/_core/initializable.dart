import 'dart:async' show FutureOr;

abstract class Initializable<T extends Object?> {
  FutureOr<T> initialize();
}
