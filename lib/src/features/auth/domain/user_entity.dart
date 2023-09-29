import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String uid,
    // TODO: temporary, for testing purposes
    required int? token,
    required String? accessToken,
  }) = _UserEntity;
}
