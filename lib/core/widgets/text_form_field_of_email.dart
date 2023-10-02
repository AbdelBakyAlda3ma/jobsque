import 'package:flutter/material.dart';
import '../utils/global/icons_jobeque_icons.dart';
import 'custom_text_form_field.dart';

class TextFormFieldOfEmail extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  const TextFormFieldOfEmail({
    super.key,
    this.onChanged,
    this.onFieldSubmitted,
  });

  @override
  State<TextFormFieldOfEmail> createState() => _TextFormFieldOfEmailState();
}

class _TextFormFieldOfEmailState extends State<TextFormFieldOfEmail> {
  FocusNode emailFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      focusNode: emailFocus,
      hintText: 'Email',
      prefixIcon: const Icon(
        IconsJobeque.sms,
        size: 20,
      ),
    );
  }
}
