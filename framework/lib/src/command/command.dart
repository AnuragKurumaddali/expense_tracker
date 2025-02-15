import '../_core/executable.dart';

abstract class Command<T extends Object?> implements Executable<T> {
  const Command();
}

typedef FutureCommand<T extends Object?> = Command<Future<T>>;
typedef StreamCommand<T extends Object?> = Command<Stream<T>>;
