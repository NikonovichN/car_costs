import 'package:flutter/material.dart';

import '../widgets/language_setting.dart';
import '../widgets/dark_theme_setting.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
      children: const [
        Center(child: Text('Settings screen')),
        DarkThemeSetting(),
        LanguageSetting()
      ],
    );
  }
}
