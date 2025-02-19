// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:framework/use_case.dart' as _i470;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sqflite/sqflite.dart' as _i779;

import '../features/expenses/command_factory.dart' as _i334;
import '../features/expenses/use_case_factory.dart' as _i914;
import '../features/use_case_engine.dart' as _i331;
import '../infrastructure/commands/command_factory.dart' as _i514;
import '../infrastructure/service_adapters/database_module.dart' as _i446;
import '../infrastructure/service_adapters/local_data_store.dart' as _i365;
import '../user_interface/_bloc_imports.dart' as _i541;
import '../user_interface/_core/design_system/particles/color_palette/_imports.dart'
    as _i462;
import '../user_interface/_core/design_system/particles/color_palette/shrine/shrine_color_palette.dart'
    as _i811;
import '../user_interface/_core/design_system/particles/decorations/_imports.dart'
    as _i259;
import '../user_interface/_core/design_system/particles/decorations/tablet/tablet_opacities.dart'
    as _i584;
import '../user_interface/_core/design_system/particles/decorations/tablet/tablet_shadows.dart'
    as _i720;
import '../user_interface/_core/design_system/particles/sizing/_imports.dart'
    as _i532;
import '../user_interface/_core/design_system/particles/sizing/tablet/tablet_sizes.dart'
    as _i384;
import '../user_interface/_core/design_system/particles/spacing/_imports.dart'
    as _i623;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_border_radius.dart'
    as _i355;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_bottom_paddings.dart'
    as _i761;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_horizontal_paddings.dart'
    as _i590;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_horizontal_spaces.dart'
    as _i950;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_left_paddings.dart'
    as _i876;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_paddings.dart'
    as _i448;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_right_paddings.dart'
    as _i582;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_top_paddings.dart'
    as _i486;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_vertical_paddings.dart'
    as _i16;
import '../user_interface/_core/design_system/particles/spacing/tablet/tablet_vertical_spaces.dart'
    as _i408;
import '../user_interface/_core/design_system/particles/typography/_imports.dart'
    as _i812;
import '../user_interface/_core/design_system/particles/typography/shrine/shrine_typography.dart'
    as _i601;
import '../user_interface/dashboard/dashboard_page_bloc.dart' as _i795;

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
    gh.singleton<_i470.UseCaseEngine>(() => const _i331.AppUseCaseEngine());
    gh.singleton<_i623.BottomPaddings>(
        () => const _i761.TabletBottomPaddings());
    gh.singleton<_i623.HorizontalSpaces>(
        () => const _i950.TabletHorizontalSpaces());
    gh.singleton<_i532.Sizes>(() => const _i384.TabletSizes());
    gh.singleton<_i623.RightPaddings>(() => const _i582.TabletRightPaddings());
    gh.singleton<_i623.VerticalSpaces>(
        () => const _i408.TabletVerticalSpaces());
    gh.singleton<_i259.Shadows>(() => const _i720.TabletShadows());
    gh.singleton<_i623.BorderRadiusCircular>(
        () => _i355.TabletBorderRadiusCircular());
    gh.singleton<_i259.Opacities>(() => const _i584.TabletOpacities());
    gh.singleton<_i623.TopPaddings>(() => const _i486.TabletTopPaddings());
    gh.singleton<_i462.ColorPalette>(() => const _i811.ShrineColorPalette());
    gh.singleton<_i812.Typography>(() => _i601.TabletTypography());
    gh.singleton<_i623.VerticalPaddings>(
        () => const _i16.TabletVerticalPaddings());
    gh.singleton<_i623.HorizontalPaddings>(
        () => const _i590.TabletHorizontalPaddings());
    gh.factory<_i365.LocalDataStore>(
        () => _i365.LocalDataStore(gh<_i779.Database>()));
    gh.singleton<_i623.LeftPaddings>(() => const _i876.TabletLeftPaddings());
    gh.singleton<_i623.Paddings>(() => const _i448.TabletPaddings());
    gh.factory<_i334.AddExpenseModuleCommandFactory>(() =>
        _i514.DefaultAddExpenseCommandFactory(gh<_i365.LocalDataStore>()));
    gh.factory<_i914.AddExpenseModuleUseCaseFactory>(() =>
        _i914.AddExpenseModuleUseCaseFactory(
            gh<_i334.AddExpenseModuleCommandFactory>()));
    gh.factory<_i795.DashboardPageBloc>(() => _i795.DashboardPageBloc(
          gh<_i914.AddExpenseModuleUseCaseFactory>(),
          gh<_i541.UseCaseEngine>(),
        ));
    return this;
  }
}

class _$DatabaseModule extends _i446.DatabaseModule {}
