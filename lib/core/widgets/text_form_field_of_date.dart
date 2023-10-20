import 'package:flutter/material.dart';

import 'custom_date_picker_icon.dart';
import 'custom_text_form_field.dart';

class TextFormFieldOfDate extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(int, String) onTapped;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  const TextFormFieldOfDate({
    super.key,
    this.hintText,
    this.validator,
    required this.onTapped,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: validator,
      hintText: hintText,
      focusNode: FocusNode(),
      controller: controller,
      suffixIcon: CustomDatePickerIcon(
        onTapped: onTapped,
      ),
      onChanged: onChanged,
    );
  }
}
