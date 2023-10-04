import 'package:flutter/material.dart';

import 'package:car_costs/src/theme/text/text_extensions.dart';
import 'package:car_costs/src/theme/colors/colors_extensions.dart';

class TextEditorApp extends StatefulWidget {
  final String? placeholder;
  final ValueChanged<String> onChanged;
  final bool obscureText;

  const TextEditorApp({
    super.key,
    this.placeholder,
    required this.onChanged,
    this.obscureText = false,
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
    final colorSchemeExt = Theme.of(context).extension<ColorsAppExt>()!;

    final underlineBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colorSchemeExt.onBackgroundInverse!),
    );

    return TextField(
      controller: _controller,
      style: textStylesExt.openSansRegular,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        enabledBorder: underlineBorder,
        focusedBorder: underlineBorder.copyWith(
          borderSide: const BorderSide(width: 2),
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
