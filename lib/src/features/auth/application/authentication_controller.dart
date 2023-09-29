import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_controller.dart';
import '../data/user_repository.dart';

final authenticationControllerProvider =
    Provider.autoDispose(AuthenticationController.new);

class AuthenticationController extends StateNotifier<AsyncValue<bool>> {
  final UserRepository _userRepository;

  AuthenticationController(Ref ref)
      : _userRepository = ref.read(userRepositoryProvider),
        super(const AsyncData(false));

  // TODO:
  // forgotPassword()

  Future<void> logInViaEmailPassword(String email, String password) async {
    state = const AsyncLoading();
    try {
      final user = await _userRepository.logInViaEmailPassword(email, password);
      userController.overrideWithValue(user);
      state = const AsyncData(true);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> signUpViaEmailPassword(String email, String password) async {
    state = const AsyncLoading();
    try {
      final user =
          await _userRepository.signUpViaEmailPassword(email, password);
      userController.overrideWithValue(user);
      state = const AsyncData(true);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> logOut() async {
    state = const AsyncLoading();
    try {
      await _userRepository.logOut();
      userController.overrideWithValue(null);
      state = const AsyncData(false);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}
