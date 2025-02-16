import 'package:flutter/services.dart' show Brightness, Size, SystemUiOverlayStyle;
import 'package:go_router/go_router.dart';

import '_imports.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  static const bottomSize = 24.0;

  final Widget? title;
  final Widget? actionIcon;
  final Widget? leadingIcon;
  final bool showBackNav;
  final bool isHomePage;
  final bool coloredAppBar;
  final Future<bool> Function()? onWillPop;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  const CustomAppBar({
    Key? key,
    this.title,
    this.actionIcon,
    this.leadingIcon,
    this.showBackNav = true,
    this.coloredAppBar = false,
    required this.isHomePage,
    this.onWillPop,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.coloredAppBar ? Particles.colors.primary : Colors.white,
      shadowColor: Colors.white,
      elevation: 0.5,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      titleSpacing: 20, // Remove spacing for title
      leadingWidth: widget.showBackNav ? null : 30, // No width for leading when not used
      title: Stack(
        children: [
          widget.isHomePage
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0), // Explicitly set left padding to 0
                    child: SizedBox(
                      width: 130,
                      child: SvgPicture.asset(
                        Assets.icons.appLogoNavBar,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : widget.title ?? const SizedBox(),
        ],
      ),
      leading: !widget.showBackNav
          ? null
          : widget.leadingIcon ??
              (widget.isHomePage
                  ? const Offstage()
                  : IconButton(
                      color: widget.coloredAppBar ? Colors.white : Colors.black,
                      icon: SvgPicture.asset(width: 24, height: 24, Assets.icons.backIcon),
                      onPressed: () async {
                        GoRouter.of(context).pop();
                      })),
      centerTitle: false,
      actions: [
        widget.actionIcon ?? const SizedBox(),
      ],
    );
  }
}
