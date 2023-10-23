import 'package:flutter/material.dart';

import 'package:car_costs/src/theme/text/text_extensions.dart';
import 'package:car_costs/src/theme/colors/colors_extensions.dart';

class TextEditorApp extends StatefulWidget {
  final String? placeholder;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const TextEditorApp({
    super.key,
    this.placeholder,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
  });

  @override
  State<TextEditorApp> createState() => _TextEditorAppState();
}

class _TextEditorAppState extends State<TextEditorApp> {
  static const _defaultPlaceholder = 'Please, enter your text';

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStylesExt = Theme.of(context).extension<TextStylesExt>()!;
    final colorScheme = Theme.of(context).colorScheme;
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;

    final underlineBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colorSchemeExt.onBackgroundInverse!),
    );

    return TextField(
      controller: widget.controller ?? _controller,
      keyboardType: widget.keyboardType,
      style: textStylesExt.openSansRegular,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      cursorColor: colorScheme.onBackground,
      decoration: InputDecoration(
        enabledBorder: underlineBorder,
        focusedBorder: underlineBorder.copyWith(
          borderSide: underlineBorder.borderSide.copyWith(width: 2),
        ),
        label: Text(
          widget.placeholder ?? _defaultPlaceholder,
          style: textStylesExt.openSansRegular.copyWith(
            color: colorSchemeExt.placeholder,
          ),
        ),
      ),
    );
  }
}
