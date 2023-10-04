import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:car_costs/src/widgets/buttons.dart';
import 'package:car_costs/src/widgets/text_editor_app.dart';
import 'package:car_costs/src/theme/text/text_extensions.dart';
import 'package:car_costs/src/theme/colors/colors_extensions.dart';
import '../../application/authentication_controller.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  AuthScreenState createState() => AuthScreenState();
}

class AuthScreenState extends ConsumerState<AuthScreen> {
  late String _email;
  late String _password;
  String? error;

  @override
  void initState() {
    super.initState();

    _email = '';
    _password = '';
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final textStylesExt = Theme.of(context).extension<TextStylesExt>()!;
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;

    final authController = ref.watch(authenticationControllerProvider);

    return Material(
      color: Theme.of(context).colorScheme.background,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: authController.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 53),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Log In',
                      style: textStylesExt.merriweatherBold.copyWith(
                        fontSize: 36,
                        color: colorSchemeExt.onBackgroundInverse,
                      ),
                    ),
                    const SizedBox(height: 35),
                    TextEditorApp(
                      placeholder: 'Email',
                      // TODO: for better perfomance provide controller
                      onChanged: (value) => setState(() => _email = value),
                    ),
                    TextEditorApp(
                      placeholder: 'Password',
                      onChanged: (value) => setState(() => _password = value),
                      obscureText: true,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 140,
                      child: authController.hasError
                          ? Text(
                              authController.error.toString(),
                              style: textStyles.bodyMedium!.copyWith(
                                color: colorScheme.error,
                              ),
                            )
                          : null,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutFilledButton(
                          onPressed: () => ref
                              .read(authenticationControllerProvider.notifier)
                              .signUpViaEmailPassword(_email, _password),
                          text: Text('Sign Up',
                              style: textStylesExt.openSansRegular),
                        ),
                        const SizedBox(width: 26),
                        FullFilledButton(
                          onPressed: () => ref
                              .read(authenticationControllerProvider.notifier)
                              .logInViaEmailPassword(_email, _password),
                          text: Text('Log In',
                              style: textStylesExt.openSansRegular),
                        )
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
