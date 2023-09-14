import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/localization_repository.dart';

/// Provides possibility to read/set localization (Language)
///
/// Use method [readValue()] to get value [Locale]
/// to check if dark theme is enabled
final localizationControllerProvider =
    ChangeNotifierProvider.autoDispose(LocalizationController.new);

class LocalizationController extends ChangeNotifier {
  final LocalizationRepository _localizationRepository;

  LocalizationController(Ref ref)
      : _localizationRepository = ref.read(
          localizationRepositoryProvider,
        );

  Future<void> setValue(Locale locale) async {
    await _localizationRepository.setValue(locale);
    notifyListeners();
  }

  Locale readValue() => _localizationRepository.readValue();
}
