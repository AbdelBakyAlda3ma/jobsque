import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import '../utils/functions/build_text_field_border.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.onSaved,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.helperText,
    this.helperStyle,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText,
    required this.focusNode,
    this.prefix,
    this.keyboardType,
  });

  final String? hintText;
  final void Function(String?)? onSaved;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final String? helperText;
  final TextStyle? helperStyle;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final FocusNode focusNode;
  final bool? obscureText;
  final Widget? prefix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      focusNode: focusNode,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      style: CustomTextStyles.textMMedium,
      onSaved: onSaved,
      controller: controller,
      validator: validator,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        prefix: prefix,
        helperText: helperText,
        helperStyle: helperStyle,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        errorStyle: CustomTextStyles.textLRegular
            .copyWith(color: AppColors.danger[500]),
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconColor: focusNode.hasFocus
            ? AppColors.neutral[900]
            : AppColors.neutral[400],
        suffixIconColor: focusNode.hasFocus
            ? AppColors.neutral[900]
            : AppColors.neutral[400],
        suffixIcon: suffixIcon,
        hintStyle: CustomTextStyles.textMRegular
            .copyWith(color: AppColors.neutral[400]),
        border: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedErrorBorder: buildErrorBorders(),
        errorBorder: buildErrorBorders(),
        focusedBorder: buildFocusedBorder(),
      ),
    );
  }
}
