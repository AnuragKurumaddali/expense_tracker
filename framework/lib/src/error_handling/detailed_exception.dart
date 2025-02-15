import 'handled_exception.dart';

abstract class DetailedException extends HandledException {
  String get problem;
  String get solution;
  String get message => '$problem $solution';

  const DetailedException();
}
