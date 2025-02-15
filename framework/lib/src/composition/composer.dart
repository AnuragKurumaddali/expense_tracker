abstract class Composer<ENV extends Object> {
  ENV get env;

  const Composer();

  Future<void> compose();
  Future<void> initializeServices();
}
