import '../_imports.dart';

abstract class Channel<REQUEST extends Object?> extends Service {
  const Channel();

  Future<void> send(REQUEST request);
}

abstract class StatelessChannel<REQUEST extends Object?> extends Channel<REQUEST> {
  const StatelessChannel();
}

abstract class StatefulChannel<REQUEST extends Object?, RESPONSE extends Object?> extends Channel<REQUEST> {
  Stream<Object> get stateStream;
  Stream<bool> get isConnectedStream;
  Stream<RESPONSE> get messageStream;
  Object get currentState;

  const StatefulChannel();

  Future<void> connect();
  Future<void> disconnect();
}
