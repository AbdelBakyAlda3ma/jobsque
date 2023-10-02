import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import 'custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TertiaryButton extends CustomElevatedButton {
  TertiaryButton({
    super.key,
    super.onPressed,
    required super.style,
    required super.text,
    required super.minimumSize,
    required super.padding,
  }) : super(
          backgroundColor: AppColors.primary[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        );

  factory TertiaryButton.large(
      {void Function()? onPressed, required String text}) {
    return TertiaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
      style:
          CustomTextStyles.textLMedium.copyWith(color: AppColors.primary[500]),
    );
  }

  factory TertiaryButton.medium(
      {void Function()? onPressed, required String text}) {
    return TertiaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.all(14),
      style:
          CustomTextStyles.textMMedium.copyWith(color: AppColors.primary[500]),
    );
  }

  factory TertiaryButton.small(
      {void Function()? onPressed, required String text}) {
    return TertiaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(130, 32),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      style:
          CustomTextStyles.textMMedium.copyWith(color: AppColors.primary[500]),
    );
  }
}
