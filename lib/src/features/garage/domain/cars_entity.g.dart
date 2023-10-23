// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarsEntity _$$_CarsEntityFromJson(Map json) => _$_CarsEntity(
      cars: (json['cars'] as Map).map(
        (k, e) => MapEntry(k as String,
            CarEntity.fromJson(Map<String, Object?>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$_CarsEntityToJson(_$_CarsEntity instance) =>
    <String, dynamic>{
      'cars': instance.cars.map((k, e) => MapEntry(k, e.toJson())),
    };

_$_CarEntity _$$_CarEntityFromJson(Map json) => _$_CarEntity(
      manufacture: json['manufacture'] as String,
      model: json['model'] as String,
      generation: json['generation'] as String,
      year: json['year'] as String,
      odometer: json['odometer'] as int,
      metrics: json['metrics'] as String,
      imageUrl: json['imageUrl'] as String,
      meta: MetaEntity.fromJson(Map<String, Object?>.from(json['meta'] as Map)),
      journal: (json['journal'] as List<dynamic>?)
          ?.map((e) =>
              JournalEntryEntity.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_CarEntityToJson(_$_CarEntity instance) =>
    <String, dynamic>{
      'manufacture': instance.manufacture,
      'model': instance.model,
      'generation': instance.generation,
      'year': instance.year,
      'odometer': instance.odometer,
      'metrics': instance.metrics,
      'imageUrl': instance.imageUrl,
      'meta': instance.meta.toJson(),
      'journal': instance.journal?.map((e) => e.toJson()).toList(),
    };

_$_JournalEntryEntity _$$_JournalEntryEntityFromJson(Map json) =>
    _$_JournalEntryEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      odometer: json['odometer'] as int,
      metrics: json['metrics'] as String,
      description: json['description'] as String,
      meta: MetaEntity.fromJson(Map<String, Object?>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$$_JournalEntryEntityToJson(
        _$_JournalEntryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'odometer': instance.odometer,
      'metrics': instance.metrics,
      'description': instance.description,
      'meta': instance.meta.toJson(),
    };

_$_MetaEntity _$$_MetaEntityFromJson(Map json) => _$_MetaEntity(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      lastChangeAt: const TimestampSerializer().fromJson(json['lastChangeAt']),
    );

Map<String, dynamic> _$$_MetaEntityToJson(_$_MetaEntity instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'lastChangeAt': const TimestampSerializer().toJson(instance.lastChangeAt),
    };
