import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_entity.freezed.dart';
part 'cars_entity.g.dart';

typedef Vin = String;

@freezed
class CarsEntity with _$CarsEntity {
  const factory CarsEntity({
    required Map<Vin, CarEntity> cars,
  }) = _CarsEntity;

  factory CarsEntity.fromJson(Map<String, Object?> json) =>
      _$CarsEntityFromJson(json);
}

@freezed
class CarEntity with _$CarEntity {
  const factory CarEntity({
    required String manufacture,
    required String model,
    required String generation,
    required String year,
    required int odometer,
    required String metrics,
    required String imageUrl,
    required MetaEntity meta,
    required List<JournalEntryEntity> journal,
  }) = _CarEntity;

  factory CarEntity.fromJson(Map<String, Object?> json) =>
      _$CarEntityFromJson(json);
}

@freezed
class JournalEntryEntity with _$JournalEntryEntity {
  const factory JournalEntryEntity({
    required String id,
    required String title,
    required int odometer,
    required String metrics,
    required String description,
    required MetaEntity meta,
  }) = _JournalEntryEntity;

  factory JournalEntryEntity.fromJson(Map<String, Object?> json) =>
      _$JournalEntryEntityFromJson(json);
}

@freezed
class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    required int createdAt,
    required int lastChangeAt,
  }) = _MetaEntity;

  factory MetaEntity.fromJson(Map<String, Object?> json) =>
      _$MetaEntityFromJson(json);
}
