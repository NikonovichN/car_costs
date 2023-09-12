import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_entity.freezed.dart';

@freezed
class LocalizationEntity with _$LocalizationEntity {
  const factory LocalizationEntity({
    required Locale locale,
  }) = _LocalizationEntity;
}
