import 'package:jobseque/core/utils/global/app_colors.dart';

import '../utils/global/custom_text_styles.dart';
import 'custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends CustomElevatedButton {
  SecondaryButton({
    super.key,
    super.onPressed,
    required super.style,
    required super.text,
    required super.minimumSize,
    required super.padding,
  }) : super(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: BorderSide(
              color: AppColors.primary[900]!,
              width: 1,
            ),
          ),
        );

  factory SecondaryButton.large(
      {void Function()? onPressed, required String text}) {
    return SecondaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
      style:
          CustomTextStyles.textLMedium.copyWith(color: AppColors.neutral[900]),
    );
  }

  factory SecondaryButton.medium(
      {void Function()? onPressed, required String text}) {
    return SecondaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.all(14),
      style:
          CustomTextStyles.textMMedium.copyWith(color: AppColors.neutral[900]),
    );
  }

  factory SecondaryButton.small(
      {void Function()? onPressed, required String text}) {
    return SecondaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(130, 32),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      style:
          CustomTextStyles.textSMedium.copyWith(color: AppColors.neutral[900]),
    );
  }
}
