import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import '../utils/functions/build_text_field_border.dart';
import '../utils/global/icons_jobeque_icons.dart';

class CustomDropDownTextField extends StatelessWidget {
  const CustomDropDownTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.helperText,
    this.helperStyle,
    this.onChanged,
    required this.dropDownList,
    this.searchFocusNode,
    this.textFieldFocusNode,
    this.textStyle,
    this.clearOption,
    this.dropDownItemCount,
    this.searchShowCursor,
    this.enableSearch,
    this.searchKeyboardType,
    this.textFieldDecoration,
    this.initialValue,
  });
  final List<DropDownValueModel> dropDownList;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final SingleValueDropDownController? controller;
  final String? Function(String?)? validator;
  final String? helperText;
  final TextStyle? helperStyle;
  final void Function(dynamic)? onChanged;
  final FocusNode? searchFocusNode;
  final FocusNode? textFieldFocusNode;
  final TextStyle? textStyle;
  final bool? clearOption;
  final int? dropDownItemCount;
  final bool? searchShowCursor;
  final bool? enableSearch;
  final TextInputType? searchKeyboardType;
  final InputDecoration? textFieldDecoration;
  final dynamic initialValue;
  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      initialValue: initialValue,
      textStyle: textStyle,
      controller: controller,
      dropDownIconProperty: IconProperty(
        icon: IconsJobeque.arrowdownoutline,
        size: 20,
      ),
      clearIconProperty: IconProperty(
        icon: IconsJobeque.closecircle,
        size: 18,
      ),
      clearOption: clearOption ?? true,
      textFieldFocusNode: textFieldFocusNode,
      searchFocusNode: searchFocusNode,
      searchAutofocus: false,
      dropDownItemCount: dropDownItemCount ?? 6,
      searchShowCursor: searchShowCursor,
      enableSearch: enableSearch ?? false,
      searchKeyboardType: searchKeyboardType,
      dropDownList: dropDownList,
      onChanged: onChanged,
      searchDecoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        hintStyle: CustomTextStyles.textMRegular
            .copyWith(color: AppColors.neutral[400]),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.neutral[300]!,
          ),
        ),
      ),
      textFieldDecoration: textFieldDecoration ??
          InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixIconColor: AppColors.neutral[900],
            suffixIconColor: AppColors.neutral[900],
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
