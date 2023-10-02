import 'package:jobseque/core/widgets/disabled_button.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import 'custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends CustomElevatedButton {
  PrimaryButton({
    super.key,
    super.onPressed,
    required super.style,
    required super.text,
    required super.minimumSize,
    required super.padding,
  }) : super(
          backgroundColor: onPressed == null
              ? AppColors.primary[100]
              : AppColors.primary[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
        );

  factory PrimaryButton.large(
      {required void Function()? onPressed, required String text}) {
    return onPressed == null
        ? DisabledButton.large(text: text)
        : PrimaryButton(
            onPressed: onPressed,
            text: text,
            minimumSize: const Size(150, 48),
            padding: const EdgeInsets.symmetric(horizontal: 14),
            style: CustomTextStyles.textLMedium.copyWith(color: Colors.white),
          );
  }
  factory PrimaryButton.medium(
      {required void Function() onPressed, required String text}) {
    return PrimaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.all(14),
      style: CustomTextStyles.textMMedium.copyWith(color: Colors.white),
    );
  }
  factory PrimaryButton.small(
      {required void Function() onPressed, required String text}) {
    return PrimaryButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(96, 32),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
      style: CustomTextStyles.textSMedium.copyWith(color: Colors.white),
    );
  }
}
