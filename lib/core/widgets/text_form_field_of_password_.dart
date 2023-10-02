import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'custom_text_form_field.dart';

class TextFormFieldOfPassword extends StatefulWidget {
  final String? helperText;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextStyle? helperStyle;
  const TextFormFieldOfPassword({
    super.key,
    this.helperText,
    this.autovalidateMode,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.helperStyle,
  });

  @override
  State<TextFormFieldOfPassword> createState() =>
      _TextFormFieldOfPasswordState();
}

class _TextFormFieldOfPasswordState extends State<TextFormFieldOfPassword> {
  FocusNode passwordFocus = FocusNode();
  bool changeHelperStyleColor = false;
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      helperText: widget.helperText,
      helperStyle: widget.helperStyle,
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      hintText: 'Password',
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: obscureText
            ? const Icon(
                IconsJobeque.eyeslash,
                size: 20,
              )
            : const Icon(
                IconsJobeque.eye,
                size: 20,
              ),
      ),
      prefixIcon: const Icon(
        IconsJobeque.lock,
        size: 20,
      ),
      focusNode: passwordFocus,
    );
  }
}
