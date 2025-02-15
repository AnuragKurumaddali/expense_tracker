import '../../use_case.dart';
import '../event/ui_event.dart';

typedef UseCaseBuilder<REQUEST extends UiEvent, RESPONSE extends Object?, USE_CASE extends UseCase<REQUEST, RESPONSE>>
    = USE_CASE Function(REQUEST request);

typedef SyncUseCaseBuilder<REQUEST extends UiEvent, RESPONSE extends Object?,
        USE_CASE extends SyncUseCase<REQUEST, RESPONSE>>
    = USE_CASE Function(REQUEST request);

typedef FutureUseCaseBuilder<REQUEST extends UiEvent, RESPONSE extends Object?,
        USE_CASE extends FutureUseCase<REQUEST, RESPONSE>>
    = USE_CASE Function(REQUEST request);

typedef StreamUseCaseBuilder<REQUEST extends UiEvent, RESPONSE extends Object?,
        USE_CASE extends StreamUseCase<REQUEST, RESPONSE>>
    = USE_CASE Function(REQUEST request);
