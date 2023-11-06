import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/auth/presentation/widget/two_step_verification_enter_pin_code_body_header.dart';

class TwoStepVerificationEnterPinCodeBody extends StatelessWidget {
  const TwoStepVerificationEnterPinCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TwoStepVerificationEnterPinCodyBodyHeader(),
        const VerticalSpace(space: 20),
        Wrap(
          spacing: 8,
          children: List.generate(
            6,
            (index) => Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.neutral[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const VerticalSpace(space: 16),
        RichText(
          text: TextSpan(
            text: 'Resend code',
            style: CustomTextStyles.textLMedium
                .copyWith(color: AppColors.neutral[400]),
            children: <TextSpan>[
              TextSpan(
                text: ' 42s',
                style: CustomTextStyles.textLMedium
                    .copyWith(color: AppColors.primary[500]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
