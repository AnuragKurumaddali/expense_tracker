import '../error_handling/handled_exception.dart';
import 'state.dart';

export 'state.dart' show StateId;

abstract class UiState extends State {
  StateId? get stateId;
  HandledException get error;

  const UiState();
}
