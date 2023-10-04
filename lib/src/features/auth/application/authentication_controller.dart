import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_controller.dart';
import '../data/user_repository.dart';

final authenticationControllerProvider =
    StateNotifierProvider<AuthenticationController, AsyncValue<void>>(
        AuthenticationController.new);

class AuthenticationController extends StateNotifier<AsyncValue<void>> {
  final Ref ref;
  final UserRepository _userRepository;

  AuthenticationController(this.ref)
      : _userRepository = ref.read(userRepositoryProvider),
        super(const AsyncData(null));

  // TODO:
  // forgotPassword()

  Future<void> logInViaEmailPassword(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final user = await _userRepository.logInViaEmailPassword(email, password);
      ref.read(userControllerProvider.notifier).state = user;
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> signUpViaEmailPassword(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final user =
          await _userRepository.signUpViaEmailPassword(email, password);
      ref.read(userControllerProvider.notifier).state = user;
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> logOut() async {
    state = const AsyncValue.loading();
    try {
      await _userRepository.logOut();
      ref.read(userControllerProvider.notifier).state = null;
      state = const AsyncValue.data(null);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
