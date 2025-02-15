import '../event/ui_event.dart';

class UseCaseRequest implements UiEvent {
  const UseCaseRequest();
}

class UseCaseRequest1<P extends Object?> implements UiEvent {
  const UseCaseRequest1(P param);
}

class UseCaseRequest2<P1 extends Object?, P2 extends Object?> implements UiEvent {
  const UseCaseRequest2(P1 param1, P2 param2);
}

class UseCaseRequest3<P1 extends Object?, P2 extends Object?, P3 extends Object?> implements UiEvent {
  const UseCaseRequest3(P1 param1, P2 param2, P3 param3);
}
