import 'use_case.dart';
import 'use_case_request.dart';

abstract class UseCaseEngine {
  const UseCaseEngine();

  RESPONSE execute<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(SyncUseCase<REQUEST, RESPONSE> useCase);

  Future<RESPONSE> executeFuture<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(
      FutureUseCase<REQUEST, RESPONSE> useCase);

  Stream<RESPONSE> executeStream<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(
      StreamUseCase<REQUEST, RESPONSE> useCase);
}
