import 'package:flutter/material.dart';

import '../global/app_colors.dart';

OutlineInputBorder buildFocusedBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary[500]!,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  );
}

OutlineInputBorder buildErrorBorders() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.danger[500]!,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  );
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.neutral[300]!,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
