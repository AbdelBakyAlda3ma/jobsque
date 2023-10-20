import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'custom_text_form_field.dart';

class TextFormFieldOfUserName extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  const TextFormFieldOfUserName({
    super.key,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
  });

  @override
  State<TextFormFieldOfUserName> createState() =>
      _TextFormFieldOfUserNameState();
}

class _TextFormFieldOfUserNameState extends State<TextFormFieldOfUserName> {
  FocusNode userNameFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: widget.validator,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      focusNode: userNameFocus,
      hintText: 'User name',
      prefixIcon: const Icon(
        IconsJobeque.profile,
        size: 20,
      ),
    );
  }
}
