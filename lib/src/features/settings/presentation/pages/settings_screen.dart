import 'package:flutter/material.dart';

import '../widgets/dark_theme_setting.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Center(child: Text('Settings screen')),
        DarkThemeSetting()
      ],
    );
  }
}
