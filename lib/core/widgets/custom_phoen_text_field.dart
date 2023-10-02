import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_phone_text_field_custom_prefix_icon.dart';
import 'custom_text_form_field.dart';

class CustomPhoneTextField extends StatefulWidget {
  const CustomPhoneTextField({
    super.key,
  });

  @override
  State<CustomPhoneTextField> createState() => _CustomPhoneTextFieldState();
}

class _CustomPhoneTextFieldState extends State<CustomPhoneTextField> {
  FocusNode userNameFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        setState(() {});
      },
      onFieldSubmitted: (value) {
        setState(() {});
      },
      focusNode: userNameFocus,
      hintText: 'Enter your phone number',
      prefixIcon: const CustomPhoneTextFieldCustomPrefixIcon(),
    );
  }
}
