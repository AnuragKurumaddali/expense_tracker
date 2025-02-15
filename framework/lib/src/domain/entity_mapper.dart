import 'entity.dart';
import '../mapper/mapper.dart';
import '../_core/model.dart';

abstract class EntityMapper<ENTITY extends Entity, MODEL extends Model> implements Mapper<ENTITY, MODEL> {
  const EntityMapper();

  ENTITY toEntity(MODEL model);
  MODEL toModel(ENTITY entity);

  @override
  ENTITY from(MODEL model) => toEntity(model);
  @override
  MODEL to(ENTITY entity) => toModel(entity);
}
