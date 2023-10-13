// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarsEntity _$CarsEntityFromJson(Map<String, dynamic> json) {
  return _CarsEntity.fromJson(json);
}

/// @nodoc
mixin _$CarsEntity {
  Map<String, CarEntity> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarsEntityCopyWith<CarsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsEntityCopyWith<$Res> {
  factory $CarsEntityCopyWith(
          CarsEntity value, $Res Function(CarsEntity) then) =
      _$CarsEntityCopyWithImpl<$Res, CarsEntity>;
  @useResult
  $Res call({Map<String, CarEntity> cars});
}

/// @nodoc
class _$CarsEntityCopyWithImpl<$Res, $Val extends CarsEntity>
    implements $CarsEntityCopyWith<$Res> {
  _$CarsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as Map<String, CarEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarsEntityCopyWith<$Res>
    implements $CarsEntityCopyWith<$Res> {
  factory _$$_CarsEntityCopyWith(
          _$_CarsEntity value, $Res Function(_$_CarsEntity) then) =
      __$$_CarsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, CarEntity> cars});
}

/// @nodoc
class __$$_CarsEntityCopyWithImpl<$Res>
    extends _$CarsEntityCopyWithImpl<$Res, _$_CarsEntity>
    implements _$$_CarsEntityCopyWith<$Res> {
  __$$_CarsEntityCopyWithImpl(
      _$_CarsEntity _value, $Res Function(_$_CarsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$_CarsEntity(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as Map<String, CarEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarsEntity with DiagnosticableTreeMixin implements _CarsEntity {
  const _$_CarsEntity({required final Map<String, CarEntity> cars})
      : _cars = cars;

  factory _$_CarsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CarsEntityFromJson(json);

  final Map<String, CarEntity> _cars;
  @override
  Map<String, CarEntity> get cars {
    if (_cars is EqualUnmodifiableMapView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cars);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CarsEntity(cars: $cars)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CarsEntity'))
      ..add(DiagnosticsProperty('cars', cars));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarsEntity &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarsEntityCopyWith<_$_CarsEntity> get copyWith =>
      __$$_CarsEntityCopyWithImpl<_$_CarsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarsEntityToJson(
      this,
    );
  }
}

abstract class _CarsEntity implements CarsEntity {
  const factory _CarsEntity({required final Map<String, CarEntity> cars}) =
      _$_CarsEntity;

  factory _CarsEntity.fromJson(Map<String, dynamic> json) =
      _$_CarsEntity.fromJson;

  @override
  Map<String, CarEntity> get cars;
  @override
  @JsonKey(ignore: true)
  _$$_CarsEntityCopyWith<_$_CarsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

CarEntity _$CarEntityFromJson(Map<String, dynamic> json) {
  return _CarEntity.fromJson(json);
}

/// @nodoc
mixin _$CarEntity {
  String get manufacture => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get generation => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  int get odometer => throw _privateConstructorUsedError;
  String get metrics => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  MetaEntity get meta => throw _privateConstructorUsedError;
  List<JournalEntryEntity> get journal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarEntityCopyWith<CarEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarEntityCopyWith<$Res> {
  factory $CarEntityCopyWith(CarEntity value, $Res Function(CarEntity) then) =
      _$CarEntityCopyWithImpl<$Res, CarEntity>;
  @useResult
  $Res call(
      {String manufacture,
      String model,
      String generation,
      String year,
      int odometer,
      String metrics,
      String imageUrl,
      MetaEntity meta,
      List<JournalEntryEntity> journal});

  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$CarEntityCopyWithImpl<$Res, $Val extends CarEntity>
    implements $CarEntityCopyWith<$Res> {
  _$CarEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacture = null,
    Object? model = null,
    Object? generation = null,
    Object? year = null,
    Object? odometer = null,
    Object? metrics = null,
    Object? imageUrl = null,
    Object? meta = null,
    Object? journal = null,
  }) {
    return _then(_value.copyWith(
      manufacture: null == manufacture
          ? _value.manufacture
          : manufacture // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity,
      journal: null == journal
          ? _value.journal
          : journal // ignore: cast_nullable_to_non_nullable
              as List<JournalEntryEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<$Res> get meta {
    return $MetaEntityCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarEntityCopyWith<$Res> implements $CarEntityCopyWith<$Res> {
  factory _$$_CarEntityCopyWith(
          _$_CarEntity value, $Res Function(_$_CarEntity) then) =
      __$$_CarEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String manufacture,
      String model,
      String generation,
      String year,
      int odometer,
      String metrics,
      String imageUrl,
      MetaEntity meta,
      List<JournalEntryEntity> journal});

  @override
  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_CarEntityCopyWithImpl<$Res>
    extends _$CarEntityCopyWithImpl<$Res, _$_CarEntity>
    implements _$$_CarEntityCopyWith<$Res> {
  __$$_CarEntityCopyWithImpl(
      _$_CarEntity _value, $Res Function(_$_CarEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacture = null,
    Object? model = null,
    Object? generation = null,
    Object? year = null,
    Object? odometer = null,
    Object? metrics = null,
    Object? imageUrl = null,
    Object? meta = null,
    Object? journal = null,
  }) {
    return _then(_$_CarEntity(
      manufacture: null == manufacture
          ? _value.manufacture
          : manufacture // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity,
      journal: null == journal
          ? _value._journal
          : journal // ignore: cast_nullable_to_non_nullable
              as List<JournalEntryEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarEntity with DiagnosticableTreeMixin implements _CarEntity {
  const _$_CarEntity(
      {required this.manufacture,
      required this.model,
      required this.generation,
      required this.year,
      required this.odometer,
      required this.metrics,
      required this.imageUrl,
      required this.meta,
      required final List<JournalEntryEntity> journal})
      : _journal = journal;

  factory _$_CarEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CarEntityFromJson(json);

  @override
  final String manufacture;
  @override
  final String model;
  @override
  final String generation;
  @override
  final String year;
  @override
  final int odometer;
  @override
  final String metrics;
  @override
  final String imageUrl;
  @override
  final MetaEntity meta;
  final List<JournalEntryEntity> _journal;
  @override
  List<JournalEntryEntity> get journal {
    if (_journal is EqualUnmodifiableListView) return _journal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_journal);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CarEntity(manufacture: $manufacture, model: $model, generation: $generation, year: $year, odometer: $odometer, metrics: $metrics, imageUrl: $imageUrl, meta: $meta, journal: $journal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CarEntity'))
      ..add(DiagnosticsProperty('manufacture', manufacture))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('generation', generation))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('odometer', odometer))
      ..add(DiagnosticsProperty('metrics', metrics))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('journal', journal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarEntity &&
            (identical(other.manufacture, manufacture) ||
                other.manufacture == manufacture) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.odometer, odometer) ||
                other.odometer == odometer) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._journal, _journal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      manufacture,
      model,
      generation,
      year,
      odometer,
      metrics,
      imageUrl,
      meta,
      const DeepCollectionEquality().hash(_journal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarEntityCopyWith<_$_CarEntity> get copyWith =>
      __$$_CarEntityCopyWithImpl<_$_CarEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarEntityToJson(
      this,
    );
  }
}

abstract class _CarEntity implements CarEntity {
  const factory _CarEntity(
      {required final String manufacture,
      required final String model,
      required final String generation,
      required final String year,
      required final int odometer,
      required final String metrics,
      required final String imageUrl,
      required final MetaEntity meta,
      required final List<JournalEntryEntity> journal}) = _$_CarEntity;

  factory _CarEntity.fromJson(Map<String, dynamic> json) =
      _$_CarEntity.fromJson;

  @override
  String get manufacture;
  @override
  String get model;
  @override
  String get generation;
  @override
  String get year;
  @override
  int get odometer;
  @override
  String get metrics;
  @override
  String get imageUrl;
  @override
  MetaEntity get meta;
  @override
  List<JournalEntryEntity> get journal;
  @override
  @JsonKey(ignore: true)
  _$$_CarEntityCopyWith<_$_CarEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

JournalEntryEntity _$JournalEntryEntityFromJson(Map<String, dynamic> json) {
  return _JournalEntryEntity.fromJson(json);
}

/// @nodoc
mixin _$JournalEntryEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get odometer => throw _privateConstructorUsedError;
  String get metrics => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  MetaEntity get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JournalEntryEntityCopyWith<JournalEntryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalEntryEntityCopyWith<$Res> {
  factory $JournalEntryEntityCopyWith(
          JournalEntryEntity value, $Res Function(JournalEntryEntity) then) =
      _$JournalEntryEntityCopyWithImpl<$Res, JournalEntryEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      int odometer,
      String metrics,
      String description,
      MetaEntity meta});

  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class _$JournalEntryEntityCopyWithImpl<$Res, $Val extends JournalEntryEntity>
    implements $JournalEntryEntityCopyWith<$Res> {
  _$JournalEntryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? odometer = null,
    Object? metrics = null,
    Object? description = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<$Res> get meta {
    return $MetaEntityCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JournalEntryEntityCopyWith<$Res>
    implements $JournalEntryEntityCopyWith<$Res> {
  factory _$$_JournalEntryEntityCopyWith(_$_JournalEntryEntity value,
          $Res Function(_$_JournalEntryEntity) then) =
      __$$_JournalEntryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int odometer,
      String metrics,
      String description,
      MetaEntity meta});

  @override
  $MetaEntityCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_JournalEntryEntityCopyWithImpl<$Res>
    extends _$JournalEntryEntityCopyWithImpl<$Res, _$_JournalEntryEntity>
    implements _$$_JournalEntryEntityCopyWith<$Res> {
  __$$_JournalEntryEntityCopyWithImpl(
      _$_JournalEntryEntity _value, $Res Function(_$_JournalEntryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? odometer = null,
    Object? metrics = null,
    Object? description = null,
    Object? meta = null,
  }) {
    return _then(_$_JournalEntryEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      odometer: null == odometer
          ? _value.odometer
          : odometer // ignore: cast_nullable_to_non_nullable
              as int,
      metrics: null == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JournalEntryEntity
    with DiagnosticableTreeMixin
    implements _JournalEntryEntity {
  const _$_JournalEntryEntity(
      {required this.id,
      required this.title,
      required this.odometer,
      required this.metrics,
      required this.description,
      required this.meta});

  factory _$_JournalEntryEntity.fromJson(Map<String, dynamic> json) =>
      _$$_JournalEntryEntityFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int odometer;
  @override
  final String metrics;
  @override
  final String description;
  @override
  final MetaEntity meta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JournalEntryEntity(id: $id, title: $title, odometer: $odometer, metrics: $metrics, description: $description, meta: $meta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JournalEntryEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('odometer', odometer))
      ..add(DiagnosticsProperty('metrics', metrics))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JournalEntryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.odometer, odometer) ||
                other.odometer == odometer) &&
            (identical(other.metrics, metrics) || other.metrics == metrics) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, odometer, metrics, description, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JournalEntryEntityCopyWith<_$_JournalEntryEntity> get copyWith =>
      __$$_JournalEntryEntityCopyWithImpl<_$_JournalEntryEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JournalEntryEntityToJson(
      this,
    );
  }
}

abstract class _JournalEntryEntity implements JournalEntryEntity {
  const factory _JournalEntryEntity(
      {required final String id,
      required final String title,
      required final int odometer,
      required final String metrics,
      required final String description,
      required final MetaEntity meta}) = _$_JournalEntryEntity;

  factory _JournalEntryEntity.fromJson(Map<String, dynamic> json) =
      _$_JournalEntryEntity.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get odometer;
  @override
  String get metrics;
  @override
  String get description;
  @override
  MetaEntity get meta;
  @override
  @JsonKey(ignore: true)
  _$$_JournalEntryEntityCopyWith<_$_JournalEntryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaEntity _$MetaEntityFromJson(Map<String, dynamic> json) {
  return _MetaEntity.fromJson(json);
}

/// @nodoc
mixin _$MetaEntity {
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastChangeAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaEntityCopyWith<MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaEntityCopyWith<$Res> {
  factory $MetaEntityCopyWith(
          MetaEntity value, $Res Function(MetaEntity) then) =
      _$MetaEntityCopyWithImpl<$Res, MetaEntity>;
  @useResult
  $Res call({DateTime createdAt, DateTime lastChangeAt});
}

/// @nodoc
class _$MetaEntityCopyWithImpl<$Res, $Val extends MetaEntity>
    implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? lastChangeAt = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastChangeAt: null == lastChangeAt
          ? _value.lastChangeAt
          : lastChangeAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaEntityCopyWith<$Res>
    implements $MetaEntityCopyWith<$Res> {
  factory _$$_MetaEntityCopyWith(
          _$_MetaEntity value, $Res Function(_$_MetaEntity) then) =
      __$$_MetaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, DateTime lastChangeAt});
}

/// @nodoc
class __$$_MetaEntityCopyWithImpl<$Res>
    extends _$MetaEntityCopyWithImpl<$Res, _$_MetaEntity>
    implements _$$_MetaEntityCopyWith<$Res> {
  __$$_MetaEntityCopyWithImpl(
      _$_MetaEntity _value, $Res Function(_$_MetaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? lastChangeAt = null,
  }) {
    return _then(_$_MetaEntity(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastChangeAt: null == lastChangeAt
          ? _value.lastChangeAt
          : lastChangeAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaEntity with DiagnosticableTreeMixin implements _MetaEntity {
  const _$_MetaEntity({required this.createdAt, required this.lastChangeAt});

  factory _$_MetaEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MetaEntityFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final DateTime lastChangeAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetaEntity(createdAt: $createdAt, lastChangeAt: $lastChangeAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetaEntity'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('lastChangeAt', lastChangeAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaEntity &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastChangeAt, lastChangeAt) ||
                other.lastChangeAt == lastChangeAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, lastChangeAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaEntityCopyWith<_$_MetaEntity> get copyWith =>
      __$$_MetaEntityCopyWithImpl<_$_MetaEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaEntityToJson(
      this,
    );
  }
}

abstract class _MetaEntity implements MetaEntity {
  const factory _MetaEntity(
      {required final DateTime createdAt,
      required final DateTime lastChangeAt}) = _$_MetaEntity;

  factory _MetaEntity.fromJson(Map<String, dynamic> json) =
      _$_MetaEntity.fromJson;

  @override
  DateTime get createdAt;
  @override
  DateTime get lastChangeAt;
  @override
  @JsonKey(ignore: true)
  _$$_MetaEntityCopyWith<_$_MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
