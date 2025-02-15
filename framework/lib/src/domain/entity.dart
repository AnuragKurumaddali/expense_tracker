import 'domain_object.dart';

abstract class Entity<T extends Object> implements DomainObject {
  T get id;

  const Entity();

  @override
  operator ==(other) {
    return other is Entity && id == other.id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
