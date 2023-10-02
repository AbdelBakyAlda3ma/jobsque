import 'package:flutter/material.dart';

import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class CenteredTextWithinDivider extends StatelessWidget {
  final String text;
  const CenteredTextWithinDivider({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            height: 0,
            color: AppColors.neutral[300],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            text,
            style: CustomTextStyles.textLRegular
                .copyWith(color: AppColors.neutral[500]),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            height: 0,
            color: AppColors.neutral[300],
          ),
        ),
      ],
    );
  }
}
