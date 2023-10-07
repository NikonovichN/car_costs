// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarsEntity _$$_CarsEntityFromJson(Map<String, dynamic> json) =>
    _$_CarsEntity(
      cars: (json['cars'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, CarEntity.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_CarsEntityToJson(_$_CarsEntity instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };

_$_CarEntity _$$_CarEntityFromJson(Map<String, dynamic> json) => _$_CarEntity(
      manufacture: json['manufacture'] as String,
      model: json['model'] as String,
      generation: json['generation'] as String,
      year: json['year'] as String,
      odometer: json['odometer'] as int,
      metrics: json['metrics'] as String,
      imageUrl: json['imageUrl'] as String,
      meta: MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
      journal: (json['journal'] as List<dynamic>)
          .map((e) => JournalEntryEntity.fromJson(e as Map<String, dynamic>))
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
      'meta': instance.meta,
      'journal': instance.journal,
    };

_$_JournalEntryEntity _$$_JournalEntryEntityFromJson(
        Map<String, dynamic> json) =>
    _$_JournalEntryEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      odometer: json['odometer'] as int,
      metrics: json['metrics'] as String,
      description: json['description'] as String,
      meta: MetaEntity.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JournalEntryEntityToJson(
        _$_JournalEntryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'odometer': instance.odometer,
      'metrics': instance.metrics,
      'description': instance.description,
      'meta': instance.meta,
    };

_$_MetaEntity _$$_MetaEntityFromJson(Map<String, dynamic> json) =>
    _$_MetaEntity(
      createdAt: json['createdAt'] as int,
      lastChangeAt: json['lastChangeAt'] as int,
    );

Map<String, dynamic> _$$_MetaEntityToJson(_$_MetaEntity instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'lastChangeAt': instance.lastChangeAt,
    };
