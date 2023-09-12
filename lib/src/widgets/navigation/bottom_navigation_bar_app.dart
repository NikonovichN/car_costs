import 'package:flutter/material.dart';

import 'bottom_bar_item_app.dart';

import '../../theme/colors/colors_extensions.dart';

class BottomNavigationBarApp extends StatelessWidget {
  static const _animationDuration = Duration(milliseconds: 300);

  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomBarItemApp> items;

  const BottomNavigationBarApp({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;
    final textTheme = Theme.of(context).textTheme;
    final iconTheme = Theme.of(context).iconTheme;

    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: colorSchemeExt.backgroundBar,
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow,
            spreadRadius: 0.8,
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.asMap().entries.map(
          (entry) {
            final idx = entry.key;
            final widget = entry.value;
            final isActive = idx == currentIndex;

            return Expanded(
              child: GestureDetector(
                onTap: () => onTap(idx),
                child: Container(
                  color: isActive
                      ? colorSchemeExt.activeButtonBar
                      : Colors.transparent,
                  child: AnimatedTheme(
                    duration: _animationDuration,
                    data: ThemeData(
                      iconTheme: iconTheme.copyWith(
                        color: isActive
                            ? colorSchemeExt.onActiveButtonBar
                            : colorSchemeExt.onBackgroundBar,
                      ),
                    ),
                    child: AnimatedDefaultTextStyle(
                      duration: _animationDuration,
                      style: textTheme.labelSmall!.copyWith(
                        color: isActive
                            ? colorSchemeExt.onActiveButtonBar
                            : colorSchemeExt.onBackgroundBar,
                        fontWeight:
                            isActive ? FontWeight.bold : FontWeight.normal,
                      ),
                      child: widget,
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
