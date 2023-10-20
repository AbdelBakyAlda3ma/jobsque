import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_phone_text_field_custom_prefix_icon.dart';
import 'custom_text_form_field.dart';

class CustomPhoneTextField extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  const CustomPhoneTextField({
    super.key,
    this.onChanged,
    this.validator,
  });

  @override
  State<CustomPhoneTextField> createState() => _CustomPhoneTextFieldState();
}

class _CustomPhoneTextFieldState extends State<CustomPhoneTextField> {
  FocusNode phoneNumberFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      keyboardType: TextInputType.phone,
      validator: widget.validator,
      onChanged: widget.onChanged,
      focusNode: phoneNumberFocus,
      hintText: 'Enter your phone number',
      prefixIcon: const CustomPhoneTextFieldCustomPrefixIcon(),
    );
  }
}
