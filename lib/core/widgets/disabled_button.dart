import 'package:jobseque/core/widgets/primary_button.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import 'package:flutter/material.dart';

class DisabledButton extends PrimaryButton {
  DisabledButton({
    super.key,
    super.onPressed,
    required super.style,
    required super.text,
    required super.minimumSize,
    required super.padding,
  });

  factory DisabledButton.large(
      {void Function()? onPressed, required String text}) {
    return DisabledButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
      style:
          CustomTextStyles.textLMedium.copyWith(color: AppColors.neutral[500]),
    );
  }
  factory DisabledButton.medium({required String text}) {
    return DisabledButton(
      onPressed: () {},
      text: text,
      minimumSize: const Size(150, 48),
      padding: const EdgeInsets.all(14),
      style:
          CustomTextStyles.textMMedium.copyWith(color: AppColors.neutral[500]),
    );
  }
  factory DisabledButton.small(
      {void Function()? onPressed, required String text}) {
    return DisabledButton(
      onPressed: onPressed,
      text: text,
      minimumSize: const Size(130, 32),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      style:
          CustomTextStyles.textSMedium.copyWith(color: AppColors.neutral[500]),
    );
  }
}
