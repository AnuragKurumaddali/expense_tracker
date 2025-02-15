import 'value_object.dart';

abstract class SingleValueObject<VALUE extends Object?> implements ValueObject {
  VALUE get value;

  const SingleValueObject();

  @override
  String toString() {
    return value.toString();
  }

  @override
  operator ==(other) {
    return other is SingleValueObject && value == other.value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }
}
