import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class OnboardingOrdinaryText extends StatelessWidget {
  final String ordinaryText;
  const OnboardingOrdinaryText({
    super.key,
    required this.ordinaryText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      height: 42,
      child: Text(
        ordinaryText,
        style: CustomTextStyles.textLRegular.copyWith(
          color: AppColors.neutral[500],
        ),
      ),
    );
  }
}
