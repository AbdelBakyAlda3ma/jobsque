import 'package:flutter/material.dart';

import '../global/app_colors.dart';

OutlineInputBorder buildContentPeopleDropDownTextFieldOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.neutral[300]!,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(100),
    ),
  );
}

OutlineInputBorder buildContentPeopleDropDownTextFieldFocusedBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary[500]!,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(100),
    ),
  );
}

OutlineInputBorder buildContentPeopleDropDownTextFieldErrorBorders() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.danger[500]!,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(100),
    ),
  );
}
