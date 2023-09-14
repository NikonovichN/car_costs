import 'package:freezed_annotation/freezed_annotation.dart';

part 'dark_theme_entity.freezed.dart';

@freezed
class DarkThemeEntity with _$DarkThemeEntity {
  const factory DarkThemeEntity({
    required bool isDarkTheme,
  }) = _DarkThemeEntity;
}
