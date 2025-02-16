// ignore_for_file: avoid_redundant_argument_values, use_named_constants

import '../_imports.dart';

@Singleton(as: Shadows)
class TabletShadows extends Shadows {
  const TabletShadows();

  @override
  final primary = const [
    BoxShadow(
      offset: Offset(0, 16),
      spreadRadius: 0,
      blurRadius: 64,
      color: Color.fromRGBO(0, 0, 0, 0.06),
    ),
    BoxShadow(
      offset: Offset(0, 0),
      spreadRadius: 0,
      blurRadius: 4,
      color: Color.fromRGBO(0, 0, 0, 0.1),
    )
  ];
}
