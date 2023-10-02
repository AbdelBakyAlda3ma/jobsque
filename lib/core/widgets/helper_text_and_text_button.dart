import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import 'horizontal_space.dart';

class HelperTextAndTextButton extends StatelessWidget {
  final String helperText;
  final String textButtonLabel;
  final void Function()? onTap;
  const HelperTextAndTextButton({
    super.key,
    required this.helperText,
    required this.textButtonLabel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          helperText,
          style: CustomTextStyles.textMMedium
              .copyWith(color: AppColors.neutral[400]),
        ),
        const HorizontalSpace(space: 6),
        GestureDetector(
          onTap: onTap,
          child: Text(
            textButtonLabel,
            style: CustomTextStyles.textMMedium.copyWith(
              color: AppColors.primary[500],
            ),
          ),
        ),
      ],
    );
  }
}
