import 'package:meta/meta.dart';

import 'entity.dart';
import 'value_object.dart';

abstract class EntityMappable<T extends Object?, ENTITY extends Entity> {
  @protected
  ENTITY toEntity(T model);
}

abstract class ValueObjectMappable<T extends Object?, VALUE_OBJECT extends ValueObject> {
  @protected
  VALUE_OBJECT toValueObject(T model);
}
