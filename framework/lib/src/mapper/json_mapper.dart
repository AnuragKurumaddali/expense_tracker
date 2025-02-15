import 'mapper.dart';

typedef JsonMapper<SOURCE extends Object> = Mapper<SOURCE, Map<String, dynamic>>;
typedef FromJsonMapper<SOURCE extends Object> = FromMapper<SOURCE, Map<String, dynamic>>;
typedef ToJsonMapper<SOURCE extends Object> = ToMapper<SOURCE, Map<String, dynamic>>;
