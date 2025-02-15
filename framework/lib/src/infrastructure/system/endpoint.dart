import '../../_core/callable.dart';

abstract class Endpoint<T extends Object?> implements Callable<T> {
  const Endpoint();
}

typedef FutureEndpoint<T extends Object?> = Endpoint<Future<T>>;
typedef StreamEndpoint<T extends Object?> = Endpoint<Stream<T>>;
