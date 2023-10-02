import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class TypeOfWorkStepContentListTileSubTitle extends StatelessWidget {
  const TypeOfWorkStepContentListTileSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'CV.pdf',
        style: CustomTextStyles.textMMedium.copyWith(
          color: AppColors.neutral[500],
        ),
        children: <TextSpan>[
          TextSpan(
            text: ' • ',
            style: CustomTextStyles.textMMedium
                .copyWith(color: AppColors.neutral[400]),
          ),
          TextSpan(
            text: 'Portfolio.pdf',
            style: CustomTextStyles.textMMedium.copyWith(
              color: AppColors.neutral[500],
            ),
          ),
        ],
      ),
    );
  }
}
