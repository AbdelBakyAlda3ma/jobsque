import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class TwoStepVerificationEnterPinCodyBodyHeader extends StatelessWidget {
  const TwoStepVerificationEnterPinCodyBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
