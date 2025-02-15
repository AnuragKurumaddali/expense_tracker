// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sqflite/sqflite.dart' as _i779;

import '../infrastructure/service_adapters/database_module.dart' as _i446;
import '../infrastructure/service_adapters/local_data_store_impl.dart' as _i798;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final databaseModule = _$DatabaseModule();
    await gh.singletonAsync<_i779.Database>(
      () => databaseModule.database,
      preResolve: true,
    );
    await gh.singletonAsync<_i798.LocalDataStoreImpl>(
      () => databaseModule.expenseLocalDataSource,
      preResolve: true,
    );
    return this;
  }
}

class _$DatabaseModule extends _i446.DatabaseModule {}
