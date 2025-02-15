import '../../command.dart';

class MockFutureSuccessCommand<T extends Object?> implements FutureCommand<T> {
  final T input;

  const MockFutureSuccessCommand(this.input);

  @override
  Future<T> execute() async {
    return input;
  }
}

class MockFutureVoidSuccessCommand implements FutureCommand {
  const MockFutureVoidSuccessCommand();

  @override
  Future<void> execute() async {}
}
