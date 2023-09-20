import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../navigation/bottom_navigation_app.dart';
import '/src/features/features.dart';
import '/src/theme/colors/colors_extensions.dart';

class StackedPages extends ConsumerStatefulWidget {
  final Widget content;

  const StackedPages({super.key, required this.content});

  @override
  StackedPagesState createState() => StackedPagesState();
}

class StackedPagesState extends ConsumerState<StackedPages> {
  static const _animationDuration = Duration(milliseconds: 300);

  bool _showBackground = false;

  void _switchBackground() {
    setState(() => _showBackground = !_showBackground);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<ColorsAppExt>()!;
    final heightScreen = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Scaffold(
          body: widget.content,
          bottomNavigationBar: const BottomNavigationApp(),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        AnimatedPositioned(
          duration: _animationDuration,
          left: 0,
          right: 0,
          top: _showBackground ? 0 : heightScreen,
          bottom: _showBackground ? 0 : -heightScreen,
          child: GestureDetector(
            onTap: _switchBackground,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.centerLeft,
                  colors: [
                    colorScheme.startBackgroundGradient!,
                    colorScheme.endBackgroundGradient!,
                  ],
                ),
              ),
              child: const Center(),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: AddButton(
            turns: _showBackground ? 0.35 : 0,
            duration: _animationDuration,
            onPressed: _switchBackground,
          ),
        ),
      ],
    );
  }
}
