import 'package:rxdart/rxdart.dart';

import '../_core/task.dart';
import '../error_handling/handled_exception.dart';
import '../event/ui_event.dart';

abstract class UseCase<REQUEST extends UiEvent, RESPONSE extends Object?> {
  REQUEST get request;

  const UseCase();

  RESPONSE execute();
}

abstract class SyncUseCase<REQUEST extends UiEvent, RESPONSE extends Object?> extends UseCase<REQUEST, RESPONSE> {
  const SyncUseCase();
}

abstract class FutureUseCase<REQUEST extends UiEvent, RESPONSE extends Object?>
    extends UseCase<REQUEST, Future<RESPONSE>> {
  const FutureUseCase();
}

abstract class StreamUseCase<REQUEST extends UiEvent, RESPONSE extends Object?>
    extends UseCase<REQUEST, Stream<RESPONSE>> {
  const StreamUseCase();
}

extension UseCaseExtensionsOnStream<T extends Object?> on Stream<Task<T>> {
  Stream<Task<T>> handleUseCaseError(HandledException defaultException) {
    return onErrorResume((incomingException, stackTrace) {
      final exception = incomingException is HandledException ? incomingException : defaultException;
      return Stream.value(Task.failed(exception));
    });
  }
}
