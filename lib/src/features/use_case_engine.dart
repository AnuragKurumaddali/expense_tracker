import 'package:framework/use_case.dart';
import 'package:injectable/injectable.dart' show Singleton;

@Singleton(as: UseCaseEngine)
class AppUseCaseEngine extends BasicUseCaseEngine {
  final List<bool Function(Object? response)> ignoreLogCheckerList;

  const AppUseCaseEngine() : ignoreLogCheckerList = const [];

  const AppUseCaseEngine.custom({this.ignoreLogCheckerList = const []});

  @override
  RESPONSE execute<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(SyncUseCase<REQUEST, RESPONSE> useCase) {
    final response = super.execute(useCase);
    return response;
  }

  @override
  Future<RESPONSE> executeFuture<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(
      FutureUseCase<REQUEST, RESPONSE> useCase) async {
    final response = await super.executeFuture(useCase);
    return response;
  }

  @override
  Stream<RESPONSE> executeStream<REQUEST extends UseCaseRequest, RESPONSE extends Object?>(
      StreamUseCase<REQUEST, RESPONSE> useCase) {
    return super.executeStream(useCase).doOnData((response) {
      for (final ignoreLogChecker in ignoreLogCheckerList) {
        if (ignoreLogChecker(response)) return;
      }
    });
  }
}
