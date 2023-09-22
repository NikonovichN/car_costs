import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '/src/theme/colors/colors_extensions.dart';
import '/src/navigation/bottom_navigation_app.dart';
import '../widgets/add_button.dart';
import '../widgets/action_button.dart';
import '../../application/add_entry_controller.dart';

class StackedPages extends ConsumerStatefulWidget {
  final Widget content;

  const StackedPages({super.key, required this.content});

  @override
  StackedPagesState createState() => StackedPagesState();
}

class StackedPagesState extends ConsumerState<StackedPages> {
  static const _animationDuration = Duration(milliseconds: 300);

  bool _isAddButtonActive = false;

  void _switchBackground() {
    setState(() => _isAddButtonActive = !_isAddButtonActive);
  }

  @override
  Widget build(BuildContext context) {
    final addEntries = ref.watch(addEntryController);

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final colorSchemeExt = theme.extension<ColorsAppExt>()!;
    final widthScreen = MediaQuery.of(context).size.width;
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
          top: _isAddButtonActive ? 0 : heightScreen,
          bottom: _isAddButtonActive ? 0 : -heightScreen,
          child: GestureDetector(
            onTap: _switchBackground,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.centerLeft,
                  colors: [
                    colorSchemeExt.startBackgroundGradient!,
                    colorSchemeExt.endBackgroundGradient!,
                  ],
                ),
              ),
              child: const Center(),
            ),
          ),
        ),
        if (addEntries.isNotEmpty)
          AnimatedPositioned(
            duration: _animationDuration,
            right: _isAddButtonActive ? 25 : -widthScreen,
            bottom: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: addEntries
                  .map(
                    (action) => IntrinsicWidth(
                      child: Padding(
                        key: ValueKey(action.generateLabel(context)),
                        padding: const EdgeInsets.only(top: 20),
                        child: ActionButton(
                          icon: SvgPicture.asset(
                            action.iconPathSvg,
                            colorFilter: ColorFilter.mode(
                              colorScheme.onBackground,
                              BlendMode.srcIn,
                            ),
                          ),
                          text: Text(action.generateLabel(context)),
                          onPress: action.onPress,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        if (addEntries.isNotEmpty)
          Positioned(
            right: 20,
            bottom: 84,
            child: AddButton(
              turns: _isAddButtonActive ? 0.35 : 0,
              duration: _animationDuration,
              onPressed: _switchBackground,
            ),
          ),
      ],
    );
  }
}
