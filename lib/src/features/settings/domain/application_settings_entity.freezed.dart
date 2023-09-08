// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DarkThemeEntity {
  bool get isDarkTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DarkThemeEntityCopyWith<DarkThemeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DarkThemeEntityCopyWith<$Res> {
  factory $DarkThemeEntityCopyWith(
          DarkThemeEntity value, $Res Function(DarkThemeEntity) then) =
      _$DarkThemeEntityCopyWithImpl<$Res, DarkThemeEntity>;
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class _$DarkThemeEntityCopyWithImpl<$Res, $Val extends DarkThemeEntity>
    implements $DarkThemeEntityCopyWith<$Res> {
  _$DarkThemeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_value.copyWith(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DarkThemeEntityCopyWith<$Res>
    implements $DarkThemeEntityCopyWith<$Res> {
  factory _$$_DarkThemeEntityCopyWith(
          _$_DarkThemeEntity value, $Res Function(_$_DarkThemeEntity) then) =
      __$$_DarkThemeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class __$$_DarkThemeEntityCopyWithImpl<$Res>
    extends _$DarkThemeEntityCopyWithImpl<$Res, _$_DarkThemeEntity>
    implements _$$_DarkThemeEntityCopyWith<$Res> {
  __$$_DarkThemeEntityCopyWithImpl(
      _$_DarkThemeEntity _value, $Res Function(_$_DarkThemeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_$_DarkThemeEntity(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DarkThemeEntity implements _DarkThemeEntity {
  const _$_DarkThemeEntity({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'DarkThemeEntity(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DarkThemeEntity &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DarkThemeEntityCopyWith<_$_DarkThemeEntity> get copyWith =>
      __$$_DarkThemeEntityCopyWithImpl<_$_DarkThemeEntity>(this, _$identity);
}

abstract class _DarkThemeEntity implements DarkThemeEntity {
  const factory _DarkThemeEntity({required final bool isDarkTheme}) =
      _$_DarkThemeEntity;

  @override
  bool get isDarkTheme;
  @override
  @JsonKey(ignore: true)
  _$$_DarkThemeEntityCopyWith<_$_DarkThemeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
