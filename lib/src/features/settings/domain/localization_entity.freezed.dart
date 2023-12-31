// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalizationEntity {
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalizationEntityCopyWith<LocalizationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationEntityCopyWith<$Res> {
  factory $LocalizationEntityCopyWith(
          LocalizationEntity value, $Res Function(LocalizationEntity) then) =
      _$LocalizationEntityCopyWithImpl<$Res, LocalizationEntity>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$LocalizationEntityCopyWithImpl<$Res, $Val extends LocalizationEntity>
    implements $LocalizationEntityCopyWith<$Res> {
  _$LocalizationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalizationEntityCopyWith<$Res>
    implements $LocalizationEntityCopyWith<$Res> {
  factory _$$_LocalizationEntityCopyWith(_$_LocalizationEntity value,
          $Res Function(_$_LocalizationEntity) then) =
      __$$_LocalizationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$_LocalizationEntityCopyWithImpl<$Res>
    extends _$LocalizationEntityCopyWithImpl<$Res, _$_LocalizationEntity>
    implements _$$_LocalizationEntityCopyWith<$Res> {
  __$$_LocalizationEntityCopyWithImpl(
      _$_LocalizationEntity _value, $Res Function(_$_LocalizationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_LocalizationEntity(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LocalizationEntity implements _LocalizationEntity {
  const _$_LocalizationEntity({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationEntity(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalizationEntity &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalizationEntityCopyWith<_$_LocalizationEntity> get copyWith =>
      __$$_LocalizationEntityCopyWithImpl<_$_LocalizationEntity>(
          this, _$identity);
}

abstract class _LocalizationEntity implements LocalizationEntity {
  const factory _LocalizationEntity({required final Locale locale}) =
      _$_LocalizationEntity;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$_LocalizationEntityCopyWith<_$_LocalizationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
