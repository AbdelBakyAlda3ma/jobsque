import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class OnboardingRichText extends StatelessWidget {
  final String beginingOfRichText;
  final String differentRichText;
  final String? endOfRichText;
  const OnboardingRichText({
    super.key,
    required this.beginingOfRichText,
    required this.differentRichText,
    this.endOfRichText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      height: 126,
      child: RichText(
        text: TextSpan(
          text: beginingOfRichText,
          style:
              CustomTextStyles.h1Medium.copyWith(color: AppColors.neutral[900]),
          children: <TextSpan>[
            TextSpan(
              text: differentRichText,
              style: CustomTextStyles.h1Medium
                  .copyWith(color: AppColors.primary[500]),
            ),
            TextSpan(
              text: endOfRichText,
            ),
          ],
        ),
      ),
    );
  }
}
