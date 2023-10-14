// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';

import '../../../core/utils/global/icons_jobeque_icons.dart';

class CustomSearchTextField extends StatelessWidget {
  final String? hintText;
  final bool? autofocus;
  final Function(PointerDownEvent)? onTapOutside;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final bool? readOnly;
  const CustomSearchTextField({
    Key? key,
    this.hintText,
    this.autofocus,
    this.onTapOutside,
    this.onTap,
    this.onChanged,
    this.focusNode,
    this.readOnly,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly ?? false,
      focusNode: focusNode,
      onChanged: onChanged,
      onTapOutside: onTapOutside,
      onTap: onTap,
      autofocus: autofocus ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: CustomTextStyles.textMMedium
            .copyWith(color: AppColors.neutral[400]),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(
            top: 14,
            left: 12,
            bottom: 14,
          ),
          child: Icon(IconsJobeque.searchnormal),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: BorderSide(
        color: AppColors.neutral[300]!,
      ),
    );
  }
}
