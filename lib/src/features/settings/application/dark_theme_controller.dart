import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/dark_theme_entity.dart';
import '../data/dark_theme_repository.dart';

/// Provides possibility to read/set dark theme
///
/// Use method [readValue()] to get value [bool]
/// to check if dark theme is enabled
final darkThemeControllerProvider =
    ChangeNotifierProvider.autoDispose(DarkThemeController.new);

class DarkThemeController extends ChangeNotifier {
  final DarkThemeRepository _darkThemeRepository;

  DarkThemeController(Ref ref)
      : _darkThemeRepository = ref.read(darkThemeRepositoryProvider),
        super();

  Future<void> setDarkThemeValue(bool isDarkTheme) async {
    _darkThemeRepository.setValue(DarkThemeEntity(isDarkTheme: isDarkTheme));
    notifyListeners();
  }

  bool readValue() {
    final darkThemeEntity = _darkThemeRepository.readValue();
    return darkThemeEntity.isDarkTheme;
  }
}
