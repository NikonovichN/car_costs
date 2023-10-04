import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user_entity.dart';

final userControllerProvider =
    StateNotifierProvider<UserController, UserEntity?>(
  (ref) => UserController(),
);

class UserController extends StateNotifier<UserEntity?> {
  UserController() : super(null);
}
