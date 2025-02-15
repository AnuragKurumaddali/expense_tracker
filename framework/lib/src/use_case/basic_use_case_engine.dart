import 'package:meta/meta.dart';

import 'use_case.dart';
import 'use_case_engine.dart';
import 'use_case_request.dart';

class BasicUseCaseEngine extends UseCaseEngine {
  const BasicUseCaseEngine();

  @override
  @mustCallSuper
  @mustBeOverridden
  RESPONSE execute<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(SyncUseCase<REQUEST, RESPONSE> useCase) {
    return useCase.execute();
  }

  @override
  @mustCallSuper
  @mustBeOverridden
  Future<RESPONSE> executeFuture<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(
      FutureUseCase<REQUEST, RESPONSE> useCase) {
    return useCase.execute();
  }

  @override
  @mustCallSuper
  @mustBeOverridden
  Stream<RESPONSE> executeStream<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(
      StreamUseCase<REQUEST, RESPONSE> useCase) {
    return useCase.execute();
  }
}
