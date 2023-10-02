import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class TwoStepVerificationEnterPinCodeBody extends StatelessWidget {
  const TwoStepVerificationEnterPinCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter the 6 digit code',
          style: CustomTextStyles.textLMedium
              .copyWith(color: AppColors.neutral[900]),
        ),
        const VerticalSpace(space: 12),
        RichText(
          text: TextSpan(
            text:
                'Please confirm your account by entering the authorization code sen to ',
            style: CustomTextStyles.textMRegular
                .copyWith(color: AppColors.neutral[500]),
            children: <TextSpan>[
              TextSpan(
                text: '****-****-7234',
                style: CustomTextStyles.textMRegular
                    .copyWith(color: AppColors.neutral[900]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
