import '../../command.dart';

class MockStreamSuccessCommand<T extends Object?> implements StreamCommand<T> {
  final Stream<T> input;

  const MockStreamSuccessCommand(this.input);

  @override
  Stream<T> execute() {
    return input;
  }
}
