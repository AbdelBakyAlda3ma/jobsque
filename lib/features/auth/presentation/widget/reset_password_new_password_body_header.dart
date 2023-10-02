import 'package:flutter/material.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ResetPasswordNewPasswordBodyHeader extends StatelessWidget {
  const ResetPasswordNewPasswordBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create new password',
          style: CustomTextStyles.h2Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          'Set your new password so you can login and acces Jobsque',
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
