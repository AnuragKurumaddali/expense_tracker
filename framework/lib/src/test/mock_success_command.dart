import '../../command.dart';

class MockSuccessCommand<T extends Object?> implements Command<T> {
  final T input;

  const MockSuccessCommand(this.input);

  @override
  T execute() {
    return input;
  }
}
