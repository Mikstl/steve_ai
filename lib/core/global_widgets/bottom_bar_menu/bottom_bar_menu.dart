import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:steve_ai/core/image_paths/image_paths.dart';
import 'package:steve_ai/core/utils/responsive_util.dart';

class BottomBarMenu extends StatefulWidget {
  const BottomBarMenu({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<BottomBarMenu> createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBody: true,
      backgroundColor: colorScheme.onSecondary.withOpacity(0.1),
      body: widget.navigationShell,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: (kIsWeb && ResponsiveUtil.isWeb(context))
          ? null
          : Theme(
              data: ThemeData(useMaterial3: false),
              child: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                color: colorScheme.surface,
                surfaceTintColor: colorScheme.onSecondary,
                notchMargin: 7,
                child: SizedBox(
                  height: 57,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              _goBranch(0);
                            },
                            child: SvgPicture.asset(
                              chatsIcon,
                              colorFilter: ColorFilter.mode(
                                  widget.navigationShell.currentIndex == 0
                                      ? colorScheme.primary
                                      : colorScheme.outline,
                                  BlendMode.srcIn),
                              height: 22,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Chats',
                            textAlign: TextAlign.center,
                            style: textTheme.bodySmall!.copyWith(
                              color: widget.navigationShell.currentIndex == 0
                                  ? colorScheme.primary
                                  : colorScheme.outline,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              _goBranch(1);
                            },
                            child: SvgPicture.asset(
                              profileIcon,
                              colorFilter: ColorFilter.mode(
                                  widget.navigationShell.currentIndex == 1
                                      ? colorScheme.primary
                                      : colorScheme.outline,
                                  BlendMode.srcIn),
                              height: 22,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Profile',
                            textAlign: TextAlign.center,
                            style: textTheme.bodySmall!.copyWith(
                              color: widget.navigationShell.currentIndex == 1
                                  ? colorScheme.primary
                                  : colorScheme.outline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
