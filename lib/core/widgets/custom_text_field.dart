import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import '../utils/functions/build_text_field_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.helperText,
    this.helperStyle,
    this.onChanged,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? helperText;
  final TextStyle? helperStyle;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: CustomTextStyles.textMMedium,
      controller: controller,
      decoration: InputDecoration(
        helperText: helperText,
        helperStyle: helperStyle,
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        errorStyle: CustomTextStyles.textLRegular
            .copyWith(color: AppColors.danger[500]),
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.neutral[900],
        suffixIconColor: AppColors.neutral[900],
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
