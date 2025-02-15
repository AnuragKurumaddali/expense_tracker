abstract class FromMapper<SOURCE extends Object?, TARGET extends Object?> {
  const FromMapper();

  SOURCE from(TARGET target);
}

abstract class ToMapper<SOURCE extends Object?, TARGET extends Object?> {
  const ToMapper();

  TARGET to(SOURCE source);
}

abstract class Mapper<SOURCE extends Object?, TARGET extends Object?>
    implements FromMapper<SOURCE, TARGET>, ToMapper<SOURCE, TARGET> {
  const Mapper();
}
