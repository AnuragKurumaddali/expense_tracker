import 'package:bloc/bloc.dart' show Bloc;
import 'package:rxdart/rxdart.dart';

import '../error_handling/handled_exception.dart';
import '../event/ui_event.dart';
import '../state/ui_state.dart';
import '../use_case/basic_use_case_engine.dart';
import '../use_case/use_case.dart';
import '../use_case/use_case_builder.dart';
import '../use_case/use_case_engine.dart';
import '../use_case/use_case_request.dart';

export 'package:framework/use_case_engine.dart';

abstract class UseCaseBloc<BASE_EVENT extends UiEvent, STATE extends UiState> extends Bloc<BASE_EVENT, STATE> {
  static const _defaultUseCaseEngine = BasicUseCaseEngine();

  final UseCaseEngine useCaseEngine;
  final subs = CompositeSubscription();

  Stream<HandledException> get errorStream =>
      stream.map((state) => state.error).where((error) => error.isNotEmpty).distinct();

  UseCaseBloc(super.initialState, [this.useCaseEngine = _defaultUseCaseEngine]);

  @override
  Future<void> close() {
    subs.dispose();
    return super.close();
  }

  void registerUseCase<REQUEST extends BASE_EVENT, USE_CASE extends UseCase<REQUEST, BASE_EVENT>>(
      UseCaseBuilder<REQUEST, BASE_EVENT, USE_CASE> useCaseBuilder) {
    on<REQUEST>((request, emit) {
      final useCase = useCaseBuilder(request);
      final response = useCase.execute();
      add(response);
    });
  }

  void registerUseCase1<REQUEST extends BASE_EVENT, RESPONSE extends BASE_EVENT,
      USE_CASE extends UseCase<REQUEST, RESPONSE>>(
    UseCaseBuilder<REQUEST, BASE_EVENT, USE_CASE> useCaseBuilder,
    STATE Function(RESPONSE response) reducer,
  ) {
    on<REQUEST>((request, emit) {
      final useCase = useCaseBuilder(request);
      final response = useCase.execute();
      final newState = reducer(response);
      emit(newState);
    });
  }

  void registerFutureUseCase<REQUEST extends BASE_EVENT, USE_CASE extends FutureUseCase<REQUEST, BASE_EVENT>>(
      FutureUseCaseBuilder<REQUEST, BASE_EVENT, USE_CASE> useCaseBuilder) {
    on<REQUEST>((request, emit) async {
      final useCase = useCaseBuilder(request);
      final response = await useCase.execute();
      add(response);
    });
  }

  void registerStreamUseCase<REQUEST extends BASE_EVENT, USE_CASE extends StreamUseCase<REQUEST, BASE_EVENT>>(
      StreamUseCaseBuilder<REQUEST, BASE_EVENT, USE_CASE> useCaseBuilder) {
    on<REQUEST>((request, emit) async {
      final responseStream = useCaseBuilder(request).execute();
      await emit.onEach(responseStream, onData: add);
    });
  }

  void registerStreamUseCase1<REQUEST extends BASE_EVENT, RESPONSE extends BASE_EVENT,
      USE_CASE extends StreamUseCase<REQUEST, RESPONSE>>(
    StreamUseCaseBuilder<REQUEST, RESPONSE, USE_CASE> useCaseBuilder,
    STATE Function(RESPONSE response) reducer,
  ) {
    on<REQUEST>((request, emit) async {
      final responseStream = useCaseBuilder(request).execute();
      await emit.forEach(responseStream, onData: reducer);
    });
  }

  void registerUseCase2<EVENT extends BASE_EVENT, REQUEST extends UseCaseRequest, RESPONSE extends Object?,
      USE_CASE extends SyncUseCase<REQUEST, RESPONSE>>(
    SyncUseCaseBuilder<REQUEST, RESPONSE, USE_CASE> useCaseBuilder,
    REQUEST Function(EVENT event) requestBuilder,
    STATE Function(RESPONSE response) reducer,
  ) {
    on<EVENT>((event, emit) {
      final request = requestBuilder(event);
      final useCase = useCaseBuilder(request);
      final response = useCaseEngine.execute(useCase);
      final newState = reducer(response);
      emit(newState);
    });
  }

  void registerFutureUseCase2<EVENT extends BASE_EVENT, REQUEST extends UseCaseRequest, RESPONSE extends Object?,
      USE_CASE extends FutureUseCase<REQUEST, RESPONSE>>(
    FutureUseCaseBuilder<REQUEST, RESPONSE, USE_CASE> useCaseBuilder,
    REQUEST Function(EVENT event) requestBuilder,
    STATE Function(RESPONSE response) reducer,
  ) {
    on<EVENT>((event, emit) async {
      final request = requestBuilder(event);
      final useCase = useCaseBuilder(request);
      final response = await useCaseEngine.executeFuture(useCase);
      final newState = reducer(response);
      emit(newState);
    });
  }

  void registerStreamUseCase2<EVENT extends BASE_EVENT, REQUEST extends UseCaseRequest, RESPONSE extends Object?,
      USE_CASE extends StreamUseCase<REQUEST, RESPONSE>>(
    StreamUseCaseBuilder<REQUEST, RESPONSE, USE_CASE> useCaseBuilder,
    REQUEST Function(EVENT event) requestBuilder,
    STATE Function(RESPONSE response) reducer,
  ) {
    on<EVENT>((event, emit) async {
      final request = requestBuilder(event);
      final useCase = useCaseBuilder(request);
      final responseStream = useCaseEngine.executeStream(useCase);
      await emit.forEach(responseStream, onData: reducer);
    });
  }

  void registerStreamUseCaseWithPrereducer<EVENT extends BASE_EVENT, REQUEST extends UseCaseRequest,
      RESPONSE extends Object?, USE_CASE extends StreamUseCase<REQUEST, RESPONSE>>(
    StreamUseCaseBuilder<REQUEST, RESPONSE, USE_CASE> useCaseBuilder,
    STATE Function(EVENT event) prereducer,
    REQUEST Function(EVENT event) requestBuilder,
    STATE Function(RESPONSE response) reducer,
  ) {
    on<EVENT>((event, emit) async {
      emit(prereducer(event));
      final request = requestBuilder(event);
      final useCase = useCaseBuilder(request);
      final responseStream = useCaseEngine.executeStream(useCase);
      await emit.forEach(responseStream, onData: reducer);
    });
  }

  void registerReducer<RESPONSE extends BASE_EVENT>(STATE Function(STATE state, RESPONSE event) reducer) {
    on<RESPONSE>((response, emit) {
      emit(reducer(state, response));
    });
  }

  ///
  /// Helps to ignore events through a bloc.
  ///
  /// [CAUTION] Use it for quick prototyping only.
  ///
  void registerEmptyReducer<RESPONSE extends BASE_EVENT>() {
    on<RESPONSE>((response, emit) => null);
  }
}
