import 'package:uuid/uuid.dart' show Uuid;

import 'id.dart';

class Uuid4 extends Id {
  @override
  final String value;

  Uuid4() : value = const Uuid().v4();

  Uuid4.fromValue(String value) : value = Uuid.isValidUUID(fromString: value) ? value : throw 'Invalid UUID';
}
