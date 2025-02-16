import '../widgets/text_fields/search_text_field.dart';
import '../widgets/texts/page_title_text.dart';
import '_imports.dart';
import 'app_bar.dart';

class BasicPage extends StatefulWidget {
  final bool showLanguageSelector;
  final Future<bool> Function()? onWillPop;
  final bool showDeviceSelector;
  final bool showLogoutButton;
  final bool showBackNav;
  final bool isLoginPage;
  final bool isHomePage;
  final String? title;
  final bool showAppBarLogo;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Widget? bottomBar;
  final bool showSupportButton;
  final bool scrollable;
  final bool hideMenu;
  final bool isColoredAppBar;
  final Widget? actionIcon;
  final Widget? appBarLeading;
  final TextEditingController? searchController;
  final VoidCallback? onSearchClearPressed;
  final String? searchHintText;
  final ValueNotifier<bool>? showSearchField;
  final FocusNode? searchFocusNode;

  const BasicPage._internal({
    this.padding,
    this.onWillPop,
    this.title,
    required this.child,
    this.bottomBar,
    this.showLogoutButton = false,
    this.showLanguageSelector = false,
    this.showBackNav = true,
    this.showDeviceSelector = true,
    this.showSupportButton = true,
    this.showAppBarLogo = false,
    this.isLoginPage = false,
    this.isHomePage = false,
    this.scrollable = false,
    this.hideMenu = false,
    this.isColoredAppBar = false,
    this.actionIcon = const SizedBox(),
    this.appBarLeading,
    this.searchController,
    this.onSearchClearPressed,
    this.searchHintText,
    this.showSearchField,
    this.searchFocusNode,
  });

  const BasicPage({
    EdgeInsetsGeometry? padding,
    Future<bool> Function()? onWillPop,
    String? title,
    bool? showBackNav,
    required Widget child,
    bool isColoredAppBar = false,
    Widget? bottomBar,
    Widget? actionIcon,
    Widget? appBarLeading,
    TextEditingController? searchController,
    VoidCallback? onSearchClearPressed,
    String? searchHintText,
    ValueNotifier<bool>? showSearchField,
    FocusNode? searchFocusNode,
  }) : this._internal(
          padding: padding,
          onWillPop: onWillPop,
          title: title,
          child: child,
          bottomBar: bottomBar,
          showBackNav: showBackNav ?? true,
          isColoredAppBar: isColoredAppBar,
          actionIcon: actionIcon,
          appBarLeading: appBarLeading,
          searchController: searchController,
          onSearchClearPressed: onSearchClearPressed,
          searchHintText: searchHintText,
          showSearchField: showSearchField,
          searchFocusNode: searchFocusNode,
        );

  const BasicPage.home({
    EdgeInsetsGeometry? padding,
    required Widget child,
    Widget? actionIcon,
    Widget? bottomBar,
    TextEditingController? searchController,
    VoidCallback? onSearchClearPressed,
    String? searchHintText,
    ValueNotifier<bool>? showSearchField,
    FocusNode? searchFocusNode,
  }) : this._internal(
          padding: padding,
          isHomePage: true,
          showBackNav: false,
          showLogoutButton: true,
          showAppBarLogo: true,
          child: child,
          actionIcon: actionIcon,
          bottomBar: bottomBar,
          searchController: searchController,
          onSearchClearPressed: onSearchClearPressed,
          searchHintText: searchHintText,
          showSearchField: showSearchField,
          searchFocusNode: searchFocusNode,
        );

  const BasicPage.appLoader({
    required Widget child,
  }) : this._internal(
          showBackNav: false,
          child: child,
        );

  const BasicPage.loginPage({
    EdgeInsetsGeometry? padding,
    required Widget child,
    bool isLoginPage = true,
    String? title,
  }) : this._internal(
          scrollable: false,
          showBackNav: false,
          isLoginPage: isLoginPage,
          padding: padding,
          child: child,
          title: title,
        );

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    final padding = widget.padding ?? Particles.paddings.page;
    return ValueListenableBuilder<bool>(
        valueListenable: widget.showSearchField ?? ValueNotifier(false),
        builder: (context, showSearchField, child) {
          return PopScope(
            canPop: widget.onWillPop == null,
            onPopInvoked: widget.onWillPop == null
                ? null
                : (didPop) async {
                    if (!didPop) return;
                    final navigator = Navigator.of(context);
                    final mayPop = await widget.onWillPop!();
                    if (mayPop) {
                      navigator.pop();
                    }
                  },
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Scaffold(
                  backgroundColor: widget.isHomePage
                      ? Colors.white
                      : showSearchField ? Colors.white : const Color(0XFFF4F4F4),
                  extendBodyBehindAppBar: true,
                  appBar: widget.isLoginPage
                      ? const PreferredSize(
                          preferredSize: Size.fromHeight(0),
                          child: SizedBox(height: 70))
                      : widget.isHomePage
                          ? PreferredSize(
                              preferredSize: Size.fromHeight(showSearchField ? 122 : 70),
                              child: Column(
                                children: [
                                  CustomAppBar(
                                    title: PageTitleText(widget.title,
                                        widget.isColoredAppBar ? Colors.white : Colors.black),
                                    coloredAppBar: widget.isColoredAppBar,
                                    actionIcon: widget.actionIcon,
                                    showBackNav: widget.showBackNav,
                                    isHomePage: widget.isHomePage,
                                    onWillPop: widget.onWillPop,
                                    leadingIcon: widget.appBarLeading,
                                  ),
                                  if (showSearchField)
                                    SearchTextField(
                                      searchFocusNode: widget.searchFocusNode!,
                                      searchController:
                                          widget.searchController!,
                                      hintText: widget.searchHintText!,
                                      onClearPressed:
                                          widget.onSearchClearPressed!,
                                    ),
                                ],
                              ),
                            )
                          : showSearchField
                              ? PreferredSize(
                                  preferredSize: Size.fromHeight(showSearchField ? 122 : 70),
                                  child: Column(
                                    children: [
                                      CustomAppBar(
                                        title: PageTitleText(widget.title,
                                            widget.isColoredAppBar ? Colors.white : Colors.black),
                                        coloredAppBar: widget.isColoredAppBar,
                                        actionIcon: widget.actionIcon,
                                        showBackNav: widget.showBackNav,
                                        isHomePage: widget.isHomePage,
                                        onWillPop: widget.onWillPop,
                                        leadingIcon: widget.appBarLeading,
                                      ),
                                      if (showSearchField)
                                        SearchTextField(
                                          searchFocusNode: widget.searchFocusNode!,
                                          searchController: widget.searchController!,
                                          hintText: widget.searchHintText!,
                                          onClearPressed: widget.onSearchClearPressed!,
                                        ),
                                    ],
                                  ),
                                )
                              : CustomAppBar(
                                  title: PageTitleText(widget.title,
                                      widget.isColoredAppBar ? Colors.white : Colors.black),
                                  coloredAppBar: widget.isColoredAppBar,
                                  actionIcon: widget.actionIcon,
                                  showBackNav: widget.showBackNav,
                                  isHomePage: widget.isHomePage,
                                  onWillPop: widget.onWillPop,
                                  leadingIcon: widget.appBarLeading,
                                ),
                  body: SafeArea(
                    child: _ScrollableContent(
                      scrollable: widget.scrollable,
                      child: Padding(
                        padding: padding,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: widget.child,
                        ),
                      ),
                    ),
                  ),
                  bottomNavigationBar:
                      widget.isLoginPage ? const SizedBox() : widget.bottomBar),
            ),
          );
        });
  }
}

class _ScrollableContent extends StatelessWidget {
  final bool scrollable;
  final Widget child;

  const _ScrollableContent({
    required this.scrollable,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return scrollable ? SingleChildScrollView(child: child) : child;
  }
}
